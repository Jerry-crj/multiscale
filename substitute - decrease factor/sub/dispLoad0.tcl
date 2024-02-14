
for {set i 0} {$i < 5} {incr i} {
	remove timeSeries [expr $i+4]
	remove loadPattern [expr $i+4]
	timeSeries Path [expr $i+4] -fileTime maintime.in -filePath "node8Disp[expr $i+1].in" -factor 1.0
}
for {set i 0} {$i < 5} {incr i} {
	remove timeSeries [expr $i+9]
	remove loadPattern [expr $i+9]
	timeSeries Path [expr $i+9] -fileTime maintime.in -filePath "node13Disp[expr $i+1].in" -factor 1.0
}

pattern Plain 4 4 {
	sp  8  1  1.0
}

pattern Plain 5 5 {
	sp  8  2  1.0
}

pattern Plain 6 6 {
	sp  8  3  1.0
}

pattern Plain 7 7 {
	sp  8  4  1.0
}

pattern Plain 8 8 {
	sp  8  5  1.0
}

pattern Plain 9 9 {
	sp  13  1  1.0
}

pattern Plain 10 10 {
	sp  13  2  1.0
}

pattern Plain 11 11 {
	sp  13  3  1.0
}

pattern Plain 12 12 {
	sp  13  4  1.0
}

pattern Plain 13 13 {
	sp  13  5  1.0
}
