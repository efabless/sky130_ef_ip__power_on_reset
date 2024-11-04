puts "running"; #this tcl script should be sourced inside a xschem waveform launcher to plot the same signal across multiple raw files (corners)

# Define the base directory (change it to your CACE runs directory) 
set base_dir "~/analog_ip/sky130_ef_ip__power_on_reset/runs"

#Define the tb_base_file_name 
set tb_base_file_name "tran_sim_base_file.txt"

#Define the signals you wish to plot
set signals_to_plot {por porb porb_h_0 vbg x1.x15.x1.vo1 x1.x15.rst} 

# Define the raw files from which you wish to plot signals (e.g., "1-3,20-60,88-90")
set file_selection "0-100"

#Procedure to parse file selection string
proc parse_file_selection {file_selection} {
    set indices {}
    foreach range [split $file_selection ,] {
        if {[regexp {(\d+)-(\d+)} $range -> start end]} {
            # Range format "X-Y"
            for {set i $start} {$i <= $end} {incr i} {
                lappend indices $i
            }
        } elseif {[regexp {\d+} $range]} {
            # Single file format "X"
            lappend indices $range
        }
    }
    return $indices
}


#Procedure for finding the base file location
proc search_base_file {directory} {
    global tb_base_file_name
    # Get the list of files and subdirectories in the current directory
    set items [glob -nocomplain -directory $directory *]
    
    foreach item $items {
        # Check if it's a directory
        if {[file isdirectory $item]} {
            # Recursively search in the subdirectory
            set result [search_base_file $item]
            if {[string length $result] > 0} {
                return $result
            }
        } elseif {[file tail $item] == $tb_base_file_name} {
            # If we found the file, return the path
            return $item
        }
    }
    return ""
}

# Procedure to reorder the base file
proc reorder_base_file {base_file} {
    # Open the base file and collect all file paths into a list with numeric suffixes
    set file_handle [open $base_file r]
    set raw_files_with_suffix {}

    # Read each line, extract numeric suffix, and store in list
    while {[gets $file_handle line] != -1} {
        if {[regexp {.*_(\d+)\.raw$} [file tail $line] -> suffix]} {
            lappend raw_files_with_suffix [list $line [expr {$suffix + 0}]]
        }
    }
    close $file_handle

    # Sort the list by the extracted numeric suffix
    set sorted_files [lsort -integer -index 1 $raw_files_with_suffix]

    # Write the sorted file paths back to the original file
    set file_handle [open $base_file w]
    foreach item $sorted_files {
        puts $file_handle [lindex $item 0]
    }
    close $file_handle
    puts "File reordered and saved back to original file: $base_file"

}


# Parse the file selection string into a list of indices
set selected_indices [parse_file_selection $file_selection]

# Get a list of directories inside the base_dir
set dir_list [glob -nocomplain -type d $base_dir/*]

# Initialize variables to hold the most recent directory and its time
global latest_dir
set latest_dir ""
set latest_time 0

# Loop through each directory to get its modification time
foreach dir $dir_list {
    set dir_mtime [file mtime $dir]
    
    # If the current directory is newer, update latest_dir and latest_time
    if {$dir_mtime > $latest_time} {
        set latest_time $dir_mtime
        set latest_dir $dir
    }
}

# Now, search for tran_sim_base_file.txt inside the subdirectories of latest_dir
#In your CACE tb, you should echo the .raw files being written into a base file >
#echo "CACE{simpath}/CACE{filename}_CACE{N}.raw" >> CACE{simpath}/../CACE{filename}_base_file.txt
set base_file [search_base_file $latest_dir]
reorder_base_file $base_file

set rect_index 0; #Initialize the rectangle index
set flag 0; #flag to avoid re-loading all the raw files for each signal 

#main loop
foreach signal $signals_to_plot {
  # Assuming base_file is defined correctly
  set file_handle [open $base_file r]
  
  set cnt 0
  set node_var_name "node$signal" ;# A unique node variable for each signal
  set $node_var_name "" ;# Initialize the node variable
  set color ""
  # Loop through each line (raw file path) in base_file.txt
  while {[gets $file_handle raw_file_path] != -1} {
       
      # Check if the current file index is in the selected indices
      if {[lsearch -exact $selected_indices $cnt] != -1} {
      
         #load all the raw files, then store the same signal from all files naming each with a different index
         if {$flag==0} {xschem raw read $raw_file_path tran; puts "reading raw file number $cnt, for signal: $signal"}
         
         # Append the signal-specific data to the node variable
         append $node_var_name "\\\"${signal}_$cnt; $signal % $raw_file_path tran\\\"\n"
         append color "[expr $cnt+3] "
      }
      incr cnt
  }   
  puts "waveforms extracted for $node_var_name are: [set $node_var_name]"   
  close $file_handle
  # Set the waveform graph properties for each signal after all files have been processed
  puts "setting rect number $rect_index properties"
  xschem setprop rect 2 $rect_index node [set $node_var_name]
  xschem setprop rect 2 $rect_index color $color
  incr rect_index 
  set flag 1 
}
