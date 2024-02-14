set  minDt  5.e-6

proc divideStepAnalysis {DT  divideNum  tol} {
	puts "function is called..."
	global  minDt
    set dt [expr $DT/$divideNum ]
	if {abs($dt) > abs($minDt)} {
        #---------------------------------------------#
		# test NormDispIncr $tol  2  5
		# algorithm ModifiedNewton -initial
        #---------------------------------------------#
 		for {set i 0} {$i < $divideNum} {incr i} {
            print integrator
            print algorithm
			analysis Transient	
			set ok [analyze 1 $dt]
			if {$ok != 0} {
				set ok [divideStepAnalysis $dt $divideNum  $tol]
			}
		}
	} else {
        exit
		algorithm ModifiedNewton -initial
		test NormDispIncr $tol  2  5
		analysis Transient	
		set ok [analyze 1 $DT] 
	}
	return $ok
}