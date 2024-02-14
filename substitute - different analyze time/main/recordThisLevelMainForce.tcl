
set filename "maintime.in" 
set file [open $filename a+ ]
puts $file [expr [getTime]+1e-8]
close $file

set filename "node8mainForce1.in" 
set file [open $filename a+ ]
puts $file   "[expr  -[lindex [eleResponse 8 force] 0]]"
close $file

set filename "node8mainForce2.in" 
set file [open $filename a+ ]
puts $file   "[expr  -[lindex [eleResponse 8 force] 1]]"
close $file

set filename "node8mainForce3.in" 
set file [open $filename a+ ]
puts $file   "[expr  -[lindex [eleResponse 8 force] 2]]"
close $file

set filename "node8mainForce4.in" 
set file [open $filename a+ ]
puts $file   "[expr  -[lindex [eleResponse 8 force] 3]]"
close $file

set filename "node8mainForce5.in" 
set file [open $filename a+ ]
puts $file   "[expr  -[lindex [eleResponse 8 force] 4]]"
close $file

set filename "node13mainForce1.in" 
set file [open $filename a+ ]
puts $file   "[expr  -[lindex [eleResponse 8 force] 6]]"
close $file

set filename "node13mainForce2.in" 
set file [open $filename a+ ]
puts $file   "[expr  -[lindex [eleResponse 8 force] 7]]"
close $file

set filename "node13mainForce3.in" 
set file [open $filename a+ ]
puts $file   "[expr  -[lindex [eleResponse 8 force] 8]]"
close $file

set filename "node13mainForce4.in" 
set file [open $filename a+ ]
puts $file   "[expr  -[lindex [eleResponse 8 force] 9]]"
close $file

set filename "node13mainForce5.in" 
set file [open $filename a+ ]
puts $file   "[expr  -[lindex [eleResponse 8 force] 10]]"
close $file
