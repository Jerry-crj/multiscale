set filename "./output/recordEachFrameSectionForce/frame_$times.out" 
set file [open $filename w+ ]
puts $file " 1 [eleNodes 1 ] [eleResponse 1 section forces ] "
puts $file " 2 [eleNodes 2 ] [eleResponse 2 section forces ] "
puts $file " 3 [eleNodes 3 ] [eleResponse 3 section forces ] "
puts $file " 4 [eleNodes 4 ] [eleResponse 4 section forces ] "
puts $file " 5 [eleNodes 5 ] [eleResponse 5 section forces ] "
puts $file " 6 [eleNodes 6 ] [eleResponse 6 section forces ] "
puts $file " 7 [eleNodes 7 ] [eleResponse 7 section forces ] "
puts $file " 8 [eleNodes 8 ] [eleResponse 8 section forces ] "
puts $file " 9 [eleNodes 9 ] [eleResponse 9 section forces ] "
puts $file " 10 [eleNodes 10 ] [eleResponse 10 section forces ] "
puts $file " 11 [eleNodes 11 ] [eleResponse 11 section forces ] "
puts $file " 12 [eleNodes 12 ] [eleResponse 12 section forces ] "
puts $file " 13 [eleNodes 13 ] [eleResponse 13 section forces ] "
puts $file " 14 [eleNodes 14 ] [eleResponse 14 section forces ] "
puts $file " 15 [eleNodes 15 ] [eleResponse 15 section forces ] "
puts $file " 16 [eleNodes 16 ] [eleResponse 16 section forces ] "
puts $file " 17 [eleNodes 17 ] [eleResponse 17 section forces ] "
puts $file " 18 [eleNodes 18 ] [eleResponse 18 section forces ] "
puts $file " 19 [eleNodes 19 ] [eleResponse 19 section forces ] "
puts $file " 20 [eleNodes 20 ] [eleResponse 20 section forces ] "
puts $file " 21 [eleNodes 21 ] [eleResponse 21 section forces ] "
puts $file " 22 [eleNodes 22 ] [eleResponse 22 section forces ] "
puts $file " 23 [eleNodes 23 ] [eleResponse 23 section forces ] "
puts $file " 24 [eleNodes 24 ] [eleResponse 24 section forces ] "
close $file