 
proc trainModel {steps} {
	puts "training the model ..."
	puts "steps = $steps"

	source dispLoad0.tcl
	
	for {set ii 0} {$ii < $steps} {incr ii} {
		global dt tol
		
		analysis Transient
        for {set jj 0} {$jj < 10} {incr jj} { 
		set ok [analyze 1 [expr $dt/10]]
        # puts "[getTime]"
        if {$ok != 0} {
            divideStepAnalysis [expr $dt/10] 10 $tol
        }
		reactions -dynamic
		source recordLastLevelSubForce.tcl
        }
        
	}
}

proc replaceModel {} {
	puts "replacing the model ..."

	global dt tol
	
	source dispLoad0.tcl
	
	analysis Transient
    for {set jj 0} {$jj < 10} {incr jj} { 
        set ok [analyze 1 [expr $dt/10]]
        # puts "[getTime]"
        if {$ok != 0} {
            divideStepAnalysis [expr $dt/10] 10 $tol
        }
        reactions -dynamic
        source recordLastLevelSubForce.tcl
    }
    
}
 
proc accept {sock ip port} {
	fconfigure $sock -blocking 1 -buffering none ;#line
	fileevent $sock readable [list respond $sock]
}
 
proc respond {sock} {
	if {[eof $sock] || [catch {gets $sock data}]} {
		# end of file or abnormal connection drop
		close $sock
		puts "Close $sock" ;# $echo(addr,$sock)"
	} else {
		# safe calculator style evaluator
		set command [lindex [split $data] 0]
		if {$command == "train"} {
			trainModel [lindex [split $data] 1]
		} elseif {$command == "replace"} {
			replaceModel
		}
	}
		
	puts $sock "finish"
	flush $sock
	return
}

# ---- model ----------
set  dt  0.01
source sub.tcl
source recordLastLevelSubForce.tcl

source divideStepAnalysis.tcl

socket -server accept 8800
vwait forever

