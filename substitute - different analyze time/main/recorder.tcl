set filename "./output/node19.out" 
set file [open $filename a+ ]
puts $file   "[getTime] [nodeDisp 19 1]  [nodeDisp 19 2] "
close $file


set filename "./output/node8.out" 
set file [open $filename a+ ]
puts $file   "[getTime] [nodeDisp 8 1]  [nodeDisp 8 2] [nodeDisp 8 3] [nodeDisp 8 4] [nodeDisp 8 5] "
close $file
