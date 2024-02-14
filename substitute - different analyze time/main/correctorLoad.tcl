
puts $lambda

remove timeSeries 4
remove loadPattern 4
timeSeries Path 4 -fileTime subtime.in -filePath "node8SubForce1.in" -factor $lambda
pattern Plain 4 4 {
	load 8 1.0 0.0 0.0 0.0 0.0 0.0
}
remove timeSeries 5
remove loadPattern 5
timeSeries Path 5 -fileTime subtime.in -filePath "node8SubForce2.in" -factor $lambda
pattern Plain 5 5 {
	load 8 0.0 1.0 0.0 0.0 0.0 0.0 
}
remove timeSeries 6
remove loadPattern 6
timeSeries Path 6 -fileTime subtime.in -filePath "node8SubForce3.in" -factor $lambda
pattern Plain 6 6 {
	load 8 0.0 0.0 1.0 0.0 0.0 0.0
}
remove timeSeries 7
remove loadPattern 7
timeSeries Path 7 -fileTime subtime.in -filePath "node8SubForce4.in" -factor $lambda
pattern Plain 7 7 {
	load 8 0.0 0.0 0.0 1.0 0.0 0.0
}
remove timeSeries 8
remove loadPattern 8
timeSeries Path 8 -fileTime subtime.in -filePath "node8SubForce5.in" -factor $lambda
pattern Plain 8 8 {
	load 8 0.0 0.0 0.0 0.0 1.0 0.0
}

remove timeSeries 9
remove loadPattern 9
timeSeries Path 9 -fileTime maintime.in -filePath "node8mainForce1.in" -factor [expr -$lambda]
pattern Plain 9 9 {
	load 8 1.0 0.0 0.0 0.0 0.0 0.0
}
remove timeSeries 10
remove loadPattern 10
timeSeries Path 10 -fileTime maintime.in -filePath "node8mainForce2.in" -factor [expr -$lambda]
pattern Plain 10 10 {
	load 8 0.0 1.0 0.0 0.0 0.0 0.0 
}
remove timeSeries 11
remove loadPattern 11
timeSeries Path 11 -fileTime maintime.in -filePath "node8mainForce3.in" -factor [expr -$lambda]
pattern Plain 11 11 {
	load 8 0.0 0.0 1.0 0.0 0.0 0.0
}
remove timeSeries 12
remove loadPattern 12
timeSeries Path 12 -fileTime maintime.in -filePath "node8mainForce4.in" -factor [expr -$lambda]
pattern Plain 12 12 {
	load 8 0.0 0.0 0.0 1.0 0.0 0.0
}
remove timeSeries 13
remove loadPattern 13
timeSeries Path 13 -fileTime maintime.in -filePath "node8mainForce5.in" -factor [expr -$lambda]
pattern Plain 13 13 {
	load 8 0.0 0.0 0.0 0.0 1.0 0.0
}

remove timeSeries 14
remove loadPattern 14
timeSeries Path 14 -fileTime subtime.in -filePath "node13SubForce1.in" -factor $lambda
pattern Plain 14 14 {
	load 13 1.0 0.0 0.0 0.0 0.0 0.0
}
remove timeSeries 15
remove loadPattern 15
timeSeries Path 15 -fileTime subtime.in -filePath "node13SubForce2.in" -factor $lambda
pattern Plain 15 15 {
	load 13 0.0 1.0 0.0 0.0 0.0 0.0
}
remove timeSeries 16
remove loadPattern 16
timeSeries Path 16 -fileTime subtime.in -filePath "node13SubForce3.in" -factor $lambda
pattern Plain 16 16 {
	load 13 0.0 0.0 1.0 0.0 0.0 0.0
}
remove timeSeries 17
remove loadPattern 17
timeSeries Path 17 -fileTime subtime.in -filePath "node13SubForce4.in" -factor $lambda
pattern Plain 17 17 {
	load 13 0.0 0.0 0.0 1.0 0.0 0.0
}
remove timeSeries 18
remove loadPattern 18
timeSeries Path 18 -fileTime subtime.in -filePath "node13SubForce5.in" -factor $lambda
pattern Plain 18 18 {
	load 13 0.0 0.0 0.0 0.0 1.0 0.0
}

remove timeSeries 19
remove loadPattern 19
timeSeries Path 19 -fileTime maintime.in -filePath "node13MainForce1.in" -factor [expr -$lambda]
pattern Plain 19 19 {
	load 13 1.0 0.0 0.0 0.0 0.0 0.0
}
remove timeSeries 20
remove loadPattern 20
timeSeries Path 20 -fileTime maintime.in -filePath "node13MainForce2.in" -factor [expr -$lambda]
pattern Plain 20 20 {
	load 13 0.0 1.0 0.0 0.0 0.0 0.0
}
remove timeSeries 21
remove loadPattern 21
timeSeries Path 21 -fileTime maintime.in -filePath "node13MainForce3.in" -factor [expr -$lambda]
pattern Plain 21 21 {
	load 13 0.0 0.0 1.0 0.0 0.0 0.0
}
remove timeSeries 22
remove loadPattern 22
timeSeries Path 22 -fileTime maintime.in -filePath "node13MainForce4.in" -factor [expr -$lambda]
pattern Plain 22 22 {
	load 13 0.0 0.0 0.0 1.0 0.0 0.0
}
remove timeSeries 23
remove loadPattern 23
timeSeries Path 23 -fileTime maintime.in -filePath "node13MainForce5.in" -factor [expr -$lambda]
pattern Plain 23 23 {
	load 13 0.0 0.0 0.0 0.0 1.0 0.0
}

