wipe;				# clear memory of all past model definitions
model BasicBuilder -ndm 3 -ndf 6;	# Define the model builder, ndm=#dimension, ndf=#dofs
#source LibUnits.tcl;
node 1 0.0 0.0   0.0
node 2 0.0 0.0 150.0	    
node 3 0.0 0.0 300.0
node 4 0.0 0.0 450.0
node 5 0.0 0.0 600.0   
node 6 0.0 0.0 750.0
node 7 0.0 0.0 750.0

fix  1  1 1 1 1 1 1;
fix  7  1 1 1 1 1 1;

uniaxialMaterial Concrete02 1 -30.851 -0.005 -7.170 -0.03 0.1 5.019 1930.435;	# Core concrete (confined)
uniaxialMaterial Concrete02 2 -20.577 -0.003 -5.515 -0.01 0.1 3.861 1930.435;	# Cover concrete (unconfined)
uniaxialMaterial Steel02 3  460.547 199938.000 0.002 10 0.925 0.15

# -27.577
set cover [expr 250/2]
set core  [expr 220/2]
geomTransf Linear  1  0 1 0;

section fiberSec 1 {
	# Define the core patch
	patch quadr 1 12 12 -$core $core -$core -$core $core -$core $core $core
   
	# Define the four cover patches
	patch quadr 2 2 8 -$cover $cover -$core $core $core $core $cover $cover
	patch quadr 2 2 8 -$core -$core -$cover -$cover $cover -$cover $core -$core
	patch quadr 2 8 2 -$cover $cover -$cover -$cover -$core -$core -$core $core
	patch quadr 2 8 2 $core $core $core -$core $cover -$cover $cover $cover	

    layer straight 3  3 113   110  110   110  -110
    layer straight 3  2 113   0    110   0    -110
    layer straight 3  3 113  -110  110  -110  -110
};
	
uniaxialMaterial Elastic 70 1.e10
# 不设扭转
#section Aggregator 1 70 T -section 1
element dispBeamColumn  1 1 2 5 1 1;
element dispBeamColumn  2 2 3 5 1 1;
element dispBeamColumn  3 3 4 5 1 1;
element dispBeamColumn  4 4 5 5 1 1;
element dispBeamColumn  5 5 6 5 1 1;
element   zeroLength    6 6 7 -mat 70 70 -dir 1 2

pattern Plain 1 Linear {
   load 6  0.0 0.0  -484e3 0.0 0.0 0.0
}

set dispc {}; 
set steps 0;

recorder Node -file output/displ.out -time -node 6 -dof 1 disp
recorder Node -file output/react.out -time -node 1 -dof 1 reaction

constraints Transformation ;    
numberer RCM;		# renumber dof's to minimize band-width (optimization), if you want to
system BandGeneral ;		# how to store and solve the system of equations in the analysis (large model: try UmfPack)
test NormDispIncr  1.0e-8 6 1; 		# determine if convergence has been achieved at the end of an iteration step
algorithm Newton;			# use Newton's solution algorithm: updates tangent stiffness at every iteration
integrator LoadControl 0.07
analysis Static;			# define type of analysis static or transient
analyze 10

loadConst -time 0.0
# timeSeries Path 2 -fileTime time.txt -filePath path.txt -factor 1.0e10
timeSeries Linear 2 -factor 1.0e10
pattern Plain 2 2 {
   load 6  1.0  0.0  0.0  0.0 0.0 0.0
}

for {set i 0} {$i < 10} {incr i} {
	timeSeries Constant [expr $i+3]
	pattern Plain [expr $i+3] [expr $i+3] {
	}
}

source divideStepAnalysis.tcl

# set sock1 [socket localhost 7272]; 
# fconfigure $sock1 -buffering none;

set toUpdate 0;
set totalSubtituteSteps 100;
set count 0;

source recordThisLevelMainForce.tcl
source recordNextLevelDisp.tcl

puts "push over analyze ......"

set dt 0.1
set tol 1.0e-8
set currentTime 0
while {$currentTime < 38} { 
	puts "[getTime]"
	integrator LoadControl 0.1;	# determine the next time step for an analysis
	set ok [analyze 1]
	# if {$ok != 0} {
		# divideStepAnalysis  $dt  10  $tol
	# }
	set currentTime [getTime]
	
	# source recordThisLevelMainForce.tcl

	# incr steps;
	# source recordNextLevelDisp.tcl

	# if {$currentTime > 5 && $toUpdate == 0} {
		# set toUpdate 1
	# }
	
	# if {$toUpdate == 1} {
		# puts "training fine model ......"
		# puts $sock1 "train $steps"
		# gets $sock1

		# global  toUpdate
		# set  toUpdate 2
	# } elseif {$toUpdate == 2} {
		# puts "replacing fine model ......"
		# puts $sock1 "replace"
		# gets $sock1
		# if {$count < $totalSubtituteSteps} {
			# incr  count
		# }
		# set lambda [expr (1.0*$count)/$totalSubtituteSteps]
	
		# source correctorLoad.tcl
	# }
}

wipe
# vwait forever