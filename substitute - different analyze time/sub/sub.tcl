wipe;
model BasicBuilder -ndm 3 -ndf 6;
set h 3.6576;                                                                                                  
set by 6.096;                                                                                                  
set bx 6.096;       
logFile "sub.log"                                                                                   

node  8     [expr -$bx/2]    [expr -$by/2]        $h 

node 118     [expr -$bx/2]    [expr -$by/2]    [expr 1.1*$h] 
node 128     [expr -$bx/2]    [expr -$by/2]    [expr 1.2*$h] 
node 138     [expr -$bx/2]    [expr -$by/2]    [expr 1.3*$h]
node 148     [expr -$bx/2]    [expr -$by/2]    [expr 1.4*$h]
node 158     [expr -$bx/2]    [expr -$by/2]    [expr 1.5*$h]
node 168     [expr -$bx/2]    [expr -$by/2]    [expr 1.6*$h]
node 178     [expr -$bx/2]    [expr -$by/2]    [expr 1.7*$h]
node 188     [expr -$bx/2]    [expr -$by/2]    [expr 1.8*$h]
node 198     [expr -$bx/2]    [expr -$by/2]    [expr 1.9*$h]
node 13     [expr -$bx/2]    [expr -$by/2]    [expr 2*$h] 


fix  8   1  1  1  1  1  1

fix  13   0  1  1  1  1  1
uniaxialMaterial Concrete01     1     [expr -34473.8*2]    [expr -0.005*1.5]     [expr -24131.66*1.3]     -0.03
set fc 27579.04
uniaxialMaterial Concrete01    2        [expr -$fc*1.5]      [expr -0.002*1.5]        0.0        -0.01
uniaxialMaterial Steel01       3       [expr 248200.*1.5]     2.1e8        0.015
set E 24855585.89304;
set GJ 68947600000000;
uniaxialMaterial Elastic  10      $GJ
set d 0.4572
source RCsection.tcl
RCsection   1  $d  $d     0.04        1      2        3       3     0.00051       8       8       10       10
section Aggregator            2        10      T    -section    1
set colSec 2  
geomTransf Linear   1        1  0  0
set np 4

element dispBeamColumn    8        8    118       $np      $colSec    1
element dispBeamColumn    118    118    128       $np      $colSec    1
element dispBeamColumn    128    128    138       $np      $colSec    1
element dispBeamColumn    138    138    148       $np      $colSec    1
element dispBeamColumn    148    148    158       $np      $colSec    1
element dispBeamColumn    158    158    168       $np      $colSec    1
element dispBeamColumn    168    168    178       $np      $colSec    1
element dispBeamColumn    178    178    188       $np      $colSec    1
element dispBeamColumn    188    188    198       $np      $colSec    1
element dispBeamColumn    198    198     13       $np      $colSec    1
set Abeam 0.278709
set Ibeamzz 0.004315;
set Ibeamyy 0.002427;     
section Elastic    3     $E  $Abeam  $Ibeamzz     $Ibeamyy          $GJ        1.0                       
set beamSec 3    
geomTransf Linear   2         1 1 0
set np 3              

set p  74.0
set g 9.8;            
set m 30.0;
set i [expr $m*($bx*$bx+$by*$by)/12.0]

for {set i 0} {$i < 10} {incr i} {
	timeSeries Linear [expr $i+4]
	pattern Plain [expr $i+4] [expr $i+4] {
	}
}

set tol 1e-6

# constraints Penalty 1.0e10 1.0e10;
constraints Transformation;
numberer Plain;
system BandGeneral;
test NormDispIncr $tol 20 2;
# algorithm KrylovNewton;
algorithm Newton;
integrator Newmark   0.5 0.25   
analysis Transient
# integrator LoadControl 0.1   
# analysis Static
