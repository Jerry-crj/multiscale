
set filename "../main/subtime.in" 
set file [open $filename a+ ]
puts $file [expr [getTime]+1e-8+$dt/10]
close $file

set filename "../main/node8SubForce1.in" 
set file [open $filename a+ ]
puts $file [expr -1*[nodeReaction 8 1]]
close $file

set filename "../main/node8SubForce2.in" 
set file [open $filename a+ ]
puts $file [expr -1*[nodeReaction 8 2]]
close $file

set filename "../main/node8SubForce3.in" 
set file [open $filename a+ ]
puts $file [expr -1*[nodeReaction 8 3]]
close $file

set filename "../main/node8SubForce4.in" 
set file [open $filename a+ ]
puts $file [expr -1*[nodeReaction 8 4]]
close $file

set filename "../main/node8SubForce5.in" 
set file [open $filename a+ ]
puts $file [expr -1*[nodeReaction 8 5]]
close $file

set filename "../main/node13SubForce1.in" 
set file [open $filename a+ ]
puts $file [expr -1*[nodeReaction 13 1]]
close $file

set filename "../main/node13SubForce2.in" 
set file [open $filename a+ ]
puts $file [expr -1*[nodeReaction 13 2]]
close $file

set filename "../main/node13SubForce3.in" 
set file [open $filename a+ ]
puts $file [expr -1*[nodeReaction 13 3]]
close $file

set filename "../main/node13SubForce4.in" 
set file [open $filename a+ ]
puts $file [expr -1*[nodeReaction 13 4]]
close $file

set filename "../main/node13SubForce5.in" 
set file [open $filename a+ ]
puts $file [expr -1*[nodeReaction 13 5]]
close $file
