set filename "./output/recordEachFrameLocalForce/frame_$times.out" 
set file [open $filename w+ ]
puts $file " 1 [eleNodes 1 ] [eleResponse 1 localForce ] "
puts $file " 2 [eleNodes 2 ] [eleResponse 2 localForce ] "
puts $file " 3 [eleNodes 3 ] [eleResponse 3 localForce ] "
puts $file " 4 [eleNodes 4 ] [eleResponse 4 localForce ] "
puts $file " 5 [eleNodes 5 ] [eleResponse 5 localForce ] "
puts $file " 6 [eleNodes 6 ] [eleResponse 6 localForce ] "
puts $file " 7 [eleNodes 7 ] [eleResponse 7 localForce ] "
puts $file " 8 [eleNodes 8 ] [eleResponse 8 localForce ] "
puts $file " 9 [eleNodes 9 ] [eleResponse 9 localForce ] "
puts $file " 10 [eleNodes 10 ] [eleResponse 10 localForce ] "
puts $file " 11 [eleNodes 11 ] [eleResponse 11 localForce ] "
puts $file " 12 [eleNodes 12 ] [eleResponse 12 localForce ] "
puts $file " 13 [eleNodes 13 ] [eleResponse 13 localForce ] "
puts $file " 14 [eleNodes 14 ] [eleResponse 14 localForce ] "
puts $file " 15 [eleNodes 15 ] [eleResponse 15 localForce ] "
puts $file " 16 [eleNodes 16 ] [eleResponse 16 localForce ] "
puts $file " 17 [eleNodes 17 ] [eleResponse 17 localForce ] "
puts $file " 18 [eleNodes 18 ] [eleResponse 18 localForce ] "
puts $file " 19 [eleNodes 19 ] [eleResponse 19 localForce ] "
puts $file " 20 [eleNodes 20 ] [eleResponse 20 localForce ] "
puts $file " 21 [eleNodes 21 ] [eleResponse 21 localForce ] "
puts $file " 22 [eleNodes 22 ] [eleResponse 22 localForce ] "
puts $file " 23 [eleNodes 23 ] [eleResponse 23 localForce ] "
puts $file " 24 [eleNodes 24 ] [eleResponse 24 localForce ] "
puts $file " 118 [eleNodes 118 ] [eleResponse 118 localForce ] "
puts $file " 128 [eleNodes 128 ] [eleResponse 128 localForce ] "
puts $file " 138 [eleNodes 138 ] [eleResponse 138 localForce ] "
puts $file " 148 [eleNodes 148 ] [eleResponse 148 localForce ] "
puts $file " 158 [eleNodes 158 ] [eleResponse 158 localForce ] "
puts $file " 168 [eleNodes 168 ] [eleResponse 168 localForce ] "
puts $file " 178 [eleNodes 178 ] [eleResponse 178 localForce ] "
puts $file " 188 [eleNodes 188 ] [eleResponse 188 localForce ] "
puts $file " 198 [eleNodes 198 ] [eleResponse 198 localForce ] "
close $file