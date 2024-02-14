
set filename "../sub/maintime.in" 
set file [open $filename a+ ]
puts $file [expr [getTime]+1e-8]
close $file

set filename "../sub/node8Disp1.in" 
set file [open $filename a+ ]
puts $file [nodeDisp 8 1]
close $file

set filename "../sub/node8Disp2.in" 
set file [open $filename a+ ]
puts $file [nodeDisp 8 2]
close $file

set filename "../sub/node8Disp3.in" 
set file [open $filename a+ ]
puts $file [nodeDisp 8 3]
close $file

set filename "../sub/node8Disp4.in" 
set file [open $filename a+ ]
puts $file [nodeDisp 8 4]
close $file

set filename "../sub/node8Disp5.in" 
set file [open $filename a+ ]
puts $file [nodeDisp 8 5]
close $file


set filename "../sub/node13Disp1.in" 
set file [open $filename a+ ]
puts $file [nodeDisp 13 1]
close $file

set filename "../sub/node13Disp2.in" 
set file [open $filename a+ ]
puts $file [nodeDisp 13 2]
close $file

set filename "../sub/node13Disp3.in" 
set file [open $filename a+ ]
puts $file [nodeDisp 13 3]
close $file

set filename "../sub/node13Disp4.in" 
set file [open $filename a+ ]
puts $file [nodeDisp 13 4]
close $file

set filename "../sub/node13Disp5.in" 
set file [open $filename a+ ]
puts $file [nodeDisp 13 5]
close $file

