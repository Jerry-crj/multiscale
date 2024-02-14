wipe;
model BasicBuilder -ndm 3 -ndf 6;
set h 3.6576;                                                                                                  
set by 6.096;                                                                                                  
set bx 6.096;       
                                                                                        
node 11     [expr  $bx/2]    [expr  $by/2]        0
node 12     [expr -$bx/2]    [expr  $by/2]        0
node 13     [expr -$bx/2]    [expr -$by/2]        0 
node 14     [expr  $bx/2]    [expr -$by/2]        0 
node 21     [expr  $bx/2]    [expr  $by/2]        $h 
node 22     [expr -$bx/2]    [expr  $by/2]        $h 
node 23     [expr -$bx/2]    [expr -$by/2]        $h 
node 24     [expr  $bx/2]    [expr -$by/2]        $h 
node 31     [expr  $bx/2]    [expr  $by/2]    [expr 2*$h]
node 32     [expr -$bx/2]    [expr  $by/2]    [expr 2*$h] 
node 33     [expr -$bx/2]    [expr -$by/2]    [expr 2*$h] 
node 34     [expr  $bx/2]    [expr -$by/2]    [expr 2*$h] 
node 41     [expr  $bx/2]    [expr  $by/2]    [expr 3*$h] 
node 42     [expr -$bx/2]    [expr  $by/2]    [expr 3*$h] 
node 43     [expr -$bx/2]    [expr -$by/2]    [expr 3*$h] 
node 44     [expr  $bx/2]    [expr -$by/2]    [expr 3*$h]
node 25            0                0             $h 
node 35            0                0         [expr 2*$h]
node 45            0                0         [expr 3*$h]

node 111     [expr  $bx/2]    [expr  $by/2]    [expr 0.1*$h] 
node 112     [expr  $bx/2]    [expr  $by/2]    [expr 0.2*$h] 
node 113     [expr  $bx/2]    [expr  $by/2]    [expr 0.3*$h]
node 114     [expr  $bx/2]    [expr  $by/2]    [expr 0.4*$h]
node 115     [expr  $bx/2]    [expr  $by/2]    [expr 0.5*$h]
node 116     [expr  $bx/2]    [expr  $by/2]    [expr 0.6*$h]
node 117     [expr  $bx/2]    [expr  $by/2]    [expr 0.7*$h]
node 118     [expr  $bx/2]    [expr  $by/2]    [expr 0.8*$h]
node 119     [expr  $bx/2]    [expr  $by/2]    [expr 0.9*$h]

node 121     [expr -$bx/2]    [expr  $by/2]    [expr 0.1*$h] 
node 122     [expr -$bx/2]    [expr  $by/2]    [expr 0.2*$h] 
node 123     [expr -$bx/2]    [expr  $by/2]    [expr 0.3*$h]
node 124     [expr -$bx/2]    [expr  $by/2]    [expr 0.4*$h]
node 125     [expr -$bx/2]    [expr  $by/2]    [expr 0.5*$h]
node 126     [expr -$bx/2]    [expr  $by/2]    [expr 0.6*$h]
node 127     [expr -$bx/2]    [expr  $by/2]    [expr 0.7*$h]
node 128     [expr -$bx/2]    [expr  $by/2]    [expr 0.8*$h]
node 129     [expr -$bx/2]    [expr  $by/2]    [expr 0.9*$h]

node 131     [expr -$bx/2]    [expr -$by/2]    [expr 0.1*$h] 
node 132     [expr -$bx/2]    [expr -$by/2]    [expr 0.2*$h] 
node 133     [expr -$bx/2]    [expr -$by/2]    [expr 0.3*$h]
node 134     [expr -$bx/2]    [expr -$by/2]    [expr 0.4*$h]
node 135     [expr -$bx/2]    [expr -$by/2]    [expr 0.5*$h]
node 136     [expr -$bx/2]    [expr -$by/2]    [expr 0.6*$h]
node 137     [expr -$bx/2]    [expr -$by/2]    [expr 0.7*$h]
node 138     [expr -$bx/2]    [expr -$by/2]    [expr 0.8*$h]
node 139     [expr -$bx/2]    [expr -$by/2]    [expr 0.9*$h]

node 141     [expr  $bx/2]    [expr -$by/2]    [expr 0.1*$h] 
node 142     [expr  $bx/2]    [expr -$by/2]    [expr 0.2*$h] 
node 143     [expr  $bx/2]    [expr -$by/2]    [expr 0.3*$h]
node 144     [expr  $bx/2]    [expr -$by/2]    [expr 0.4*$h]
node 145     [expr  $bx/2]    [expr -$by/2]    [expr 0.5*$h]
node 146     [expr  $bx/2]    [expr -$by/2]    [expr 0.6*$h]
node 147     [expr  $bx/2]    [expr -$by/2]    [expr 0.7*$h]
node 148     [expr  $bx/2]    [expr -$by/2]    [expr 0.8*$h]
node 149     [expr  $bx/2]    [expr -$by/2]    [expr 0.9*$h]

node 211     [expr  $bx/2]    [expr  $by/2]    [expr 1.1*$h] 
node 212     [expr  $bx/2]    [expr  $by/2]    [expr 1.2*$h] 
node 213     [expr  $bx/2]    [expr  $by/2]    [expr 1.3*$h]
node 214     [expr  $bx/2]    [expr  $by/2]    [expr 1.4*$h]
node 215     [expr  $bx/2]    [expr  $by/2]    [expr 1.5*$h]
node 216     [expr  $bx/2]    [expr  $by/2]    [expr 1.6*$h]
node 217     [expr  $bx/2]    [expr  $by/2]    [expr 1.7*$h]
node 218     [expr  $bx/2]    [expr  $by/2]    [expr 1.8*$h]
node 219     [expr  $bx/2]    [expr  $by/2]    [expr 1.9*$h]

node 221     [expr -$bx/2]    [expr  $by/2]    [expr 1.1*$h] 
node 222     [expr -$bx/2]    [expr  $by/2]    [expr 1.2*$h] 
node 223     [expr -$bx/2]    [expr  $by/2]    [expr 1.3*$h]
node 224     [expr -$bx/2]    [expr  $by/2]    [expr 1.4*$h]
node 225     [expr -$bx/2]    [expr  $by/2]    [expr 1.5*$h]
node 226     [expr -$bx/2]    [expr  $by/2]    [expr 1.6*$h]
node 227     [expr -$bx/2]    [expr  $by/2]    [expr 1.7*$h]
node 228     [expr -$bx/2]    [expr  $by/2]    [expr 1.8*$h]
node 229     [expr -$bx/2]    [expr  $by/2]    [expr 1.9*$h]

node 231     [expr -$bx/2]    [expr -$by/2]    [expr 1.1*$h] 
node 232     [expr -$bx/2]    [expr -$by/2]    [expr 1.2*$h] 
node 233     [expr -$bx/2]    [expr -$by/2]    [expr 1.3*$h]
node 234     [expr -$bx/2]    [expr -$by/2]    [expr 1.4*$h]
node 235     [expr -$bx/2]    [expr -$by/2]    [expr 1.5*$h]
node 236     [expr -$bx/2]    [expr -$by/2]    [expr 1.6*$h]
node 237     [expr -$bx/2]    [expr -$by/2]    [expr 1.7*$h]
node 238     [expr -$bx/2]    [expr -$by/2]    [expr 1.8*$h]
node 239     [expr -$bx/2]    [expr -$by/2]    [expr 1.9*$h]

node 241     [expr  $bx/2]    [expr -$by/2]    [expr 1.1*$h] 
node 242     [expr  $bx/2]    [expr -$by/2]    [expr 1.2*$h] 
node 243     [expr  $bx/2]    [expr -$by/2]    [expr 1.3*$h]
node 244     [expr  $bx/2]    [expr -$by/2]    [expr 1.4*$h]
node 245     [expr  $bx/2]    [expr -$by/2]    [expr 1.5*$h]
node 246     [expr  $bx/2]    [expr -$by/2]    [expr 1.6*$h]
node 247     [expr  $bx/2]    [expr -$by/2]    [expr 1.7*$h]
node 248     [expr  $bx/2]    [expr -$by/2]    [expr 1.8*$h]
node 249     [expr  $bx/2]    [expr -$by/2]    [expr 1.9*$h]

node 311     [expr  $bx/2]    [expr  $by/2]    [expr 2.1*$h] 
node 312     [expr  $bx/2]    [expr  $by/2]    [expr 2.2*$h] 
node 313     [expr  $bx/2]    [expr  $by/2]    [expr 2.3*$h]
node 314     [expr  $bx/2]    [expr  $by/2]    [expr 2.4*$h]
node 315     [expr  $bx/2]    [expr  $by/2]    [expr 2.5*$h]
node 316     [expr  $bx/2]    [expr  $by/2]    [expr 2.6*$h]
node 317     [expr  $bx/2]    [expr  $by/2]    [expr 2.7*$h]
node 318     [expr  $bx/2]    [expr  $by/2]    [expr 2.8*$h]
node 319     [expr  $bx/2]    [expr  $by/2]    [expr 2.9*$h]

node 321     [expr -$bx/2]    [expr  $by/2]    [expr 2.1*$h] 
node 322     [expr -$bx/2]    [expr  $by/2]    [expr 2.2*$h] 
node 323     [expr -$bx/2]    [expr  $by/2]    [expr 2.3*$h]
node 324     [expr -$bx/2]    [expr  $by/2]    [expr 2.4*$h]
node 325     [expr -$bx/2]    [expr  $by/2]    [expr 2.5*$h]
node 326     [expr -$bx/2]    [expr  $by/2]    [expr 2.6*$h]
node 327     [expr -$bx/2]    [expr  $by/2]    [expr 2.7*$h]
node 328     [expr -$bx/2]    [expr  $by/2]    [expr 2.8*$h]
node 329     [expr -$bx/2]    [expr  $by/2]    [expr 2.9*$h]

node 331     [expr -$bx/2]    [expr -$by/2]    [expr 2.1*$h] 
node 332     [expr -$bx/2]    [expr -$by/2]    [expr 2.2*$h] 
node 333     [expr -$bx/2]    [expr -$by/2]    [expr 2.3*$h]
node 334     [expr -$bx/2]    [expr -$by/2]    [expr 2.4*$h]
node 335     [expr -$bx/2]    [expr -$by/2]    [expr 2.5*$h]
node 336     [expr -$bx/2]    [expr -$by/2]    [expr 2.6*$h]
node 337     [expr -$bx/2]    [expr -$by/2]    [expr 2.7*$h]
node 338     [expr -$bx/2]    [expr -$by/2]    [expr 2.8*$h]
node 339     [expr -$bx/2]    [expr -$by/2]    [expr 2.9*$h]

node 341     [expr  $bx/2]    [expr -$by/2]    [expr 2.1*$h] 
node 342     [expr  $bx/2]    [expr -$by/2]    [expr 2.2*$h] 
node 343     [expr  $bx/2]    [expr -$by/2]    [expr 2.3*$h]
node 344     [expr  $bx/2]    [expr -$by/2]    [expr 2.4*$h]
node 345     [expr  $bx/2]    [expr -$by/2]    [expr 2.5*$h]
node 346     [expr  $bx/2]    [expr -$by/2]    [expr 2.6*$h]
node 347     [expr  $bx/2]    [expr -$by/2]    [expr 2.7*$h]
node 348     [expr  $bx/2]    [expr -$by/2]    [expr 2.8*$h]
node 349     [expr  $bx/2]    [expr -$by/2]    [expr 2.9*$h]

node 2011     [expr  $bx/2-0.1*$bx]    [expr  $by/2]    [expr $h] 
node 2012     [expr  $bx/2-0.2*$bx]    [expr  $by/2]    [expr $h] 
node 2013     [expr  $bx/2-0.3*$bx]    [expr  $by/2]    [expr $h]
node 2014     [expr  $bx/2-0.4*$bx]    [expr  $by/2]    [expr $h]
node 2015     [expr  $bx/2-0.5*$bx]    [expr  $by/2]    [expr $h]
node 2016     [expr  $bx/2-0.6*$bx]    [expr  $by/2]    [expr $h]
node 2017     [expr  $bx/2-0.7*$bx]    [expr  $by/2]    [expr $h]
node 2018     [expr  $bx/2-0.8*$bx]    [expr  $by/2]    [expr $h]
node 2019     [expr  $bx/2-0.9*$bx]    [expr  $by/2]    [expr $h]
 
node 2021     [expr -$bx/2]    [expr  $by/2-0.9*$by]    [expr $h] 
node 2022     [expr -$bx/2]    [expr  $by/2-0.8*$by]    [expr $h] 
node 2023     [expr -$bx/2]    [expr  $by/2-0.7*$by]    [expr $h]
node 2024     [expr -$bx/2]    [expr  $by/2-0.6*$by]    [expr $h]
node 2025     [expr -$bx/2]    [expr  $by/2-0.5*$by]    [expr $h]
node 2026     [expr -$bx/2]    [expr  $by/2-0.4*$by]    [expr $h]
node 2027     [expr -$bx/2]    [expr  $by/2-0.3*$by]    [expr $h]
node 2028     [expr -$bx/2]    [expr  $by/2-0.2*$by]    [expr $h]
node 2029     [expr -$bx/2]    [expr  $by/2-0.1*$by]    [expr $h]

node 2031     [expr -$bx/2+0.9*$bx]    [expr -$by/2]    [expr $h] 
node 2032     [expr -$bx/2+0.8*$bx]    [expr -$by/2]    [expr $h] 
node 2033     [expr -$bx/2+0.7*$bx]    [expr -$by/2]    [expr $h]
node 2034     [expr -$bx/2+0.6*$bx]    [expr -$by/2]    [expr $h]
node 2035     [expr -$bx/2+0.5*$bx]    [expr -$by/2]    [expr $h]
node 2036     [expr -$bx/2+0.4*$bx]    [expr -$by/2]    [expr $h]
node 2037     [expr -$bx/2+0.3*$bx]    [expr -$by/2]    [expr $h]
node 2038     [expr -$bx/2+0.2*$bx]    [expr -$by/2]    [expr $h]
node 2039     [expr -$bx/2+0.1*$bx]    [expr -$by/2]    [expr $h]

node 2041     [expr  $bx/2]    [expr -$by/2+0.9*$by]    [expr $h] 
node 2042     [expr  $bx/2]    [expr -$by/2+0.8*$by]    [expr $h] 
node 2043     [expr  $bx/2]    [expr -$by/2+0.7*$by]    [expr $h]
node 2044     [expr  $bx/2]    [expr -$by/2+0.6*$by]    [expr $h]
node 2045     [expr  $bx/2]    [expr -$by/2+0.5*$by]    [expr $h]
node 2046     [expr  $bx/2]    [expr -$by/2+0.4*$by]    [expr $h]
node 2047     [expr  $bx/2]    [expr -$by/2+0.3*$by]    [expr $h]
node 2048     [expr  $bx/2]    [expr -$by/2+0.2*$by]    [expr $h]
node 2049     [expr  $bx/2]    [expr -$by/2+0.1*$by]    [expr $h]

node 3011     [expr  $bx/2-0.1*$bx]    [expr  $by/2]    [expr 2*$h] 
node 3012     [expr  $bx/2-0.2*$bx]    [expr  $by/2]    [expr 2*$h] 
node 3013     [expr  $bx/2-0.3*$bx]    [expr  $by/2]    [expr 2*$h]
node 3014     [expr  $bx/2-0.4*$bx]    [expr  $by/2]    [expr 2*$h]
node 3015     [expr  $bx/2-0.5*$bx]    [expr  $by/2]    [expr 2*$h]
node 3016     [expr  $bx/2-0.6*$bx]    [expr  $by/2]    [expr 2*$h]
node 3017     [expr  $bx/2-0.7*$bx]    [expr  $by/2]    [expr 2*$h]
node 3018     [expr  $bx/2-0.8*$bx]    [expr  $by/2]    [expr 2*$h]
node 3019     [expr  $bx/2-0.9*$bx]    [expr  $by/2]    [expr 2*$h]

node 3021     [expr -$bx/2]    [expr  $by/2-0.9*$by]    [expr 2*$h] 
node 3022     [expr -$bx/2]    [expr  $by/2-0.8*$by]    [expr 2*$h] 
node 3023     [expr -$bx/2]    [expr  $by/2-0.7*$by]    [expr 2*$h]
node 3024     [expr -$bx/2]    [expr  $by/2-0.6*$by]    [expr 2*$h]
node 3025     [expr -$bx/2]    [expr  $by/2-0.5*$by]    [expr 2*$h]
node 3026     [expr -$bx/2]    [expr  $by/2-0.4*$by]    [expr 2*$h]
node 3027     [expr -$bx/2]    [expr  $by/2-0.3*$by]    [expr 2*$h]
node 3028     [expr -$bx/2]    [expr  $by/2-0.2*$by]    [expr 2*$h]
node 3029     [expr -$bx/2]    [expr  $by/2-0.1*$by]    [expr 2*$h]

node 3031     [expr -$bx/2+0.9*$bx]    [expr -$by/2]    [expr 2*$h] 
node 3032     [expr -$bx/2+0.8*$bx]    [expr -$by/2]    [expr 2*$h] 
node 3033     [expr -$bx/2+0.7*$bx]    [expr -$by/2]    [expr 2*$h]
node 3034     [expr -$bx/2+0.6*$bx]    [expr -$by/2]    [expr 2*$h]
node 3035     [expr -$bx/2+0.5*$bx]    [expr -$by/2]    [expr 2*$h]
node 3036     [expr -$bx/2+0.4*$bx]    [expr -$by/2]    [expr 2*$h]
node 3037     [expr -$bx/2+0.3*$bx]    [expr -$by/2]    [expr 2*$h]
node 3038     [expr -$bx/2+0.2*$bx]    [expr -$by/2]    [expr 2*$h]
node 3039     [expr -$bx/2+0.1*$bx]    [expr -$by/2]    [expr 2*$h]

node 3041     [expr  $bx/2]    [expr -$by/2+0.9*$by]    [expr 2*$h] 
node 3042     [expr  $bx/2]    [expr -$by/2+0.8*$by]    [expr 2*$h] 
node 3043     [expr  $bx/2]    [expr -$by/2+0.7*$by]    [expr 2*$h]
node 3044     [expr  $bx/2]    [expr -$by/2+0.6*$by]    [expr 2*$h]
node 3045     [expr  $bx/2]    [expr -$by/2+0.5*$by]    [expr 2*$h]
node 3046     [expr  $bx/2]    [expr -$by/2+0.4*$by]    [expr 2*$h]
node 3047     [expr  $bx/2]    [expr -$by/2+0.3*$by]    [expr 2*$h]
node 3048     [expr  $bx/2]    [expr -$by/2+0.2*$by]    [expr 2*$h]
node 3049     [expr  $bx/2]    [expr -$by/2+0.1*$by]    [expr 2*$h]

node 4011     [expr  $bx/2-0.1*$bx]    [expr  $by/2]    [expr 3*$h] 
node 4012     [expr  $bx/2-0.2*$bx]    [expr  $by/2]    [expr 3*$h] 
node 4013     [expr  $bx/2-0.3*$bx]    [expr  $by/2]    [expr 3*$h]
node 4014     [expr  $bx/2-0.4*$bx]    [expr  $by/2]    [expr 3*$h]
node 4015     [expr  $bx/2-0.5*$bx]    [expr  $by/2]    [expr 3*$h]
node 4016     [expr  $bx/2-0.6*$bx]    [expr  $by/2]    [expr 3*$h]
node 4017     [expr  $bx/2-0.7*$bx]    [expr  $by/2]    [expr 3*$h]
node 4018     [expr  $bx/2-0.8*$bx]    [expr  $by/2]    [expr 3*$h]
node 4019     [expr  $bx/2-0.9*$bx]    [expr  $by/2]    [expr 3*$h]
 
node 4021     [expr -$bx/2]    [expr  $by/2-0.9*$by]    [expr 3*$h] 
node 4022     [expr -$bx/2]    [expr  $by/2-0.8*$by]    [expr 3*$h] 
node 4023     [expr -$bx/2]    [expr  $by/2-0.7*$by]    [expr 3*$h]
node 4024     [expr -$bx/2]    [expr  $by/2-0.6*$by]    [expr 3*$h]
node 4025     [expr -$bx/2]    [expr  $by/2-0.5*$by]    [expr 3*$h]
node 4026     [expr -$bx/2]    [expr  $by/2-0.4*$by]    [expr 3*$h]
node 4027     [expr -$bx/2]    [expr  $by/2-0.3*$by]    [expr 3*$h]
node 4028     [expr -$bx/2]    [expr  $by/2-0.2*$by]    [expr 3*$h]
node 4029     [expr -$bx/2]    [expr  $by/2-0.1*$by]    [expr 3*$h]

node 4031     [expr -$bx/2+0.9*$bx]    [expr -$by/2]    [expr 3*$h] 
node 4032     [expr -$bx/2+0.8*$bx]    [expr -$by/2]    [expr 3*$h] 
node 4033     [expr -$bx/2+0.7*$bx]    [expr -$by/2]    [expr 3*$h]
node 4034     [expr -$bx/2+0.6*$bx]    [expr -$by/2]    [expr 3*$h]
node 4035     [expr -$bx/2+0.5*$bx]    [expr -$by/2]    [expr 3*$h]
node 4036     [expr -$bx/2+0.4*$bx]    [expr -$by/2]    [expr 3*$h]
node 4037     [expr -$bx/2+0.3*$bx]    [expr -$by/2]    [expr 3*$h]
node 4038     [expr -$bx/2+0.2*$bx]    [expr -$by/2]    [expr 3*$h]
node 4039     [expr -$bx/2+0.1*$bx]    [expr -$by/2]    [expr 3*$h]

node 4041     [expr  $bx/2]    [expr -$by/2+0.9*$by]    [expr 3*$h] 
node 4042     [expr  $bx/2]    [expr -$by/2+0.8*$by]    [expr 3*$h] 
node 4043     [expr  $bx/2]    [expr -$by/2+0.7*$by]    [expr 3*$h]
node 4044     [expr  $bx/2]    [expr -$by/2+0.6*$by]    [expr 3*$h]
node 4045     [expr  $bx/2]    [expr -$by/2+0.5*$by]    [expr 3*$h]
node 4046     [expr  $bx/2]    [expr -$by/2+0.4*$by]    [expr 3*$h]
node 4047     [expr  $bx/2]    [expr -$by/2+0.3*$by]    [expr 3*$h]
node 4048     [expr  $bx/2]    [expr -$by/2+0.2*$by]    [expr 3*$h]
node 4049     [expr  $bx/2]    [expr -$by/2+0.1*$by]    [expr 3*$h]

fix  11   1  1  1  1  1  1
fix  12   1  1  1  1  1  1
fix  13   1  1  1  1  1  1
fix  14   1  1  1  1  1  1
rigidDiaphragm      3         25       21    22    23    24
rigidDiaphragm      3         35       31    32    33    34
rigidDiaphragm      3         45       41    42    43    44
fix 25   0  0  1  1  1  0
fix 35   0  0  1  1  1  0
fix 45   0  0  1  1  1  0
uniaxialMaterial Concrete01     1     -34473.8    -0.005     -24131.66     -0.02
set fc 27579.04
uniaxialMaterial Concrete01    2        -$fc      -0.002        0.0        -0.006
uniaxialMaterial Steel01       3       248200.     2.1e8        0.02
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
element dispBeamColumn   110     11     111       $np      $colSec    1
element dispBeamColumn   111     111    112       $np      $colSec    1
element dispBeamColumn   112     112    113       $np      $colSec    1
element dispBeamColumn   113     113    114       $np      $colSec    1
element dispBeamColumn   114     114    115       $np      $colSec    1
element dispBeamColumn   115     115    116       $np      $colSec    1
element dispBeamColumn   116     116    117       $np      $colSec    1
element dispBeamColumn   117     117    118       $np      $colSec    1
element dispBeamColumn   118     118    119       $np      $colSec    1
element dispBeamColumn   119     119    21        $np      $colSec    1
element dispBeamColumn   210     21     211       $np      $colSec    1
element dispBeamColumn   211     211    212       $np      $colSec    1
element dispBeamColumn   212     212    213       $np      $colSec    1
element dispBeamColumn   213     213    214       $np      $colSec    1
element dispBeamColumn   214     214    215       $np      $colSec    1
element dispBeamColumn   215     215    216       $np      $colSec    1
element dispBeamColumn   216     216    217       $np      $colSec    1
element dispBeamColumn   217     217    218       $np      $colSec    1
element dispBeamColumn   218     218    219       $np      $colSec    1
element dispBeamColumn   219     219     31       $np      $colSec    1
element dispBeamColumn   310     31     311       $np      $colSec    1
element dispBeamColumn   311     311    312       $np      $colSec    1
element dispBeamColumn   312     312    313       $np      $colSec    1
element dispBeamColumn   313     313    314       $np      $colSec    1
element dispBeamColumn   314     314    315       $np      $colSec    1
element dispBeamColumn   315     315    316       $np      $colSec    1
element dispBeamColumn   316     316    317       $np      $colSec    1
element dispBeamColumn   317     317    318       $np      $colSec    1
element dispBeamColumn   318     318    319       $np      $colSec    1
element dispBeamColumn   319     319     41       $np      $colSec    1

element dispBeamColumn   120     12     121       $np      $colSec    1
element dispBeamColumn   121     121    122       $np      $colSec    1
element dispBeamColumn   122     122    123       $np      $colSec    1
element dispBeamColumn   123     123    124       $np      $colSec    1
element dispBeamColumn   124     124    125       $np      $colSec    1
element dispBeamColumn   125     125    126       $np      $colSec    1
element dispBeamColumn   126     126    127       $np      $colSec    1
element dispBeamColumn   127     127    128       $np      $colSec    1
element dispBeamColumn   128     128    129       $np      $colSec    1
element dispBeamColumn   129     129    22        $np      $colSec    1
element dispBeamColumn   220     22     221       $np      $colSec    1
element dispBeamColumn   221     221    222       $np      $colSec    1
element dispBeamColumn   222     222    223       $np      $colSec    1
element dispBeamColumn   223     223    224       $np      $colSec    1
element dispBeamColumn   224     224    225       $np      $colSec    1
element dispBeamColumn   225     225    226       $np      $colSec    1
element dispBeamColumn   226     226    227       $np      $colSec    1
element dispBeamColumn   227     227    228       $np      $colSec    1
element dispBeamColumn   228     228    229       $np      $colSec    1
element dispBeamColumn   229     229    32        $np      $colSec    1
element dispBeamColumn   320     32     321       $np      $colSec    1
element dispBeamColumn   321     321    322       $np      $colSec    1
element dispBeamColumn   322     322    323       $np      $colSec    1
element dispBeamColumn   323     323    324       $np      $colSec    1
element dispBeamColumn   324     324    325       $np      $colSec    1
element dispBeamColumn   325     325    326       $np      $colSec    1
element dispBeamColumn   326     326    327       $np      $colSec    1
element dispBeamColumn   327     327    328       $np      $colSec    1
element dispBeamColumn   328     328    329       $np      $colSec    1
element dispBeamColumn   329     329    42        $np      $colSec    1

element dispBeamColumn   130     13     131       $np      $colSec    1
element dispBeamColumn   131     131    132       $np      $colSec    1
element dispBeamColumn   132     132    133       $np      $colSec    1
element dispBeamColumn   133     133    134       $np      $colSec    1
element dispBeamColumn   134     134    135       $np      $colSec    1
element dispBeamColumn   135     135    136       $np      $colSec    1
element dispBeamColumn   136     136    137       $np      $colSec    1
element dispBeamColumn   137     137    138       $np      $colSec    1
element dispBeamColumn   138     138    139       $np      $colSec    1
element dispBeamColumn   139     139    23        $np      $colSec    1
element dispBeamColumn   230     23     231       $np      $colSec    1
element dispBeamColumn   231     231    232       $np      $colSec    1
element dispBeamColumn   232     232    233       $np      $colSec    1
element dispBeamColumn   233     233    234       $np      $colSec    1
element dispBeamColumn   234     234    235       $np      $colSec    1
element dispBeamColumn   235     235    236       $np      $colSec    1
element dispBeamColumn   236     236    237       $np      $colSec    1
element dispBeamColumn   237     237    238       $np      $colSec    1
element dispBeamColumn   238     238    239       $np      $colSec    1
element dispBeamColumn   239     239    33        $np      $colSec    1
element dispBeamColumn   330     33     331       $np      $colSec    1
element dispBeamColumn   331     331    332       $np      $colSec    1
element dispBeamColumn   332     332    333       $np      $colSec    1
element dispBeamColumn   333     333    334       $np      $colSec    1
element dispBeamColumn   334     334    335       $np      $colSec    1
element dispBeamColumn   335     335    336       $np      $colSec    1
element dispBeamColumn   336     336    337       $np      $colSec    1
element dispBeamColumn   337     337    338       $np      $colSec    1
element dispBeamColumn   338     338    339       $np      $colSec    1
element dispBeamColumn   339     339    43        $np      $colSec    1

element dispBeamColumn   140     14     141       $np      $colSec    1
element dispBeamColumn   141     141    142       $np      $colSec    1
element dispBeamColumn   142     142    143       $np      $colSec    1
element dispBeamColumn   143     143    144       $np      $colSec    1
element dispBeamColumn   144     144    145       $np      $colSec    1
element dispBeamColumn   145     145    146       $np      $colSec    1
element dispBeamColumn   146     146    147       $np      $colSec    1
element dispBeamColumn   147     147    148       $np      $colSec    1
element dispBeamColumn   148     148    149       $np      $colSec    1
element dispBeamColumn   149     149    24        $np      $colSec    1
element dispBeamColumn   240     24     241       $np      $colSec    1
element dispBeamColumn   241     241    242       $np      $colSec    1
element dispBeamColumn   242     242    243       $np      $colSec    1
element dispBeamColumn   243     243    244       $np      $colSec    1
element dispBeamColumn   244     244    245       $np      $colSec    1
element dispBeamColumn   245     245    246       $np      $colSec    1
element dispBeamColumn   246     246    247       $np      $colSec    1
element dispBeamColumn   247     247    248       $np      $colSec    1
element dispBeamColumn   248     248    249       $np      $colSec    1
element dispBeamColumn   249     249    34        $np      $colSec    1
element dispBeamColumn   340     34     341       $np      $colSec    1
element dispBeamColumn   341     341    342       $np      $colSec    1
element dispBeamColumn   342     342    343       $np      $colSec    1
element dispBeamColumn   343     343    344       $np      $colSec    1
element dispBeamColumn   344     344    345       $np      $colSec    1
element dispBeamColumn   345     345    346       $np      $colSec    1
element dispBeamColumn   346     346    347       $np      $colSec    1
element dispBeamColumn   347     347    348       $np      $colSec    1
element dispBeamColumn   348     348    349       $np      $colSec    1
element dispBeamColumn   349     349    44        $np      $colSec    1



set Abeam 0.278709
set Ibeamzz 0.004315;
set Ibeamyy 0.002427;     
section Elastic    3     $E  $Abeam  $Ibeamzz     $Ibeamyy          $GJ        1.0                       
set beamSec 3    
geomTransf Linear   2         1 1 0
set np 3              


element dispBeamColumn   2010     21   2011     $np      $beamSec     2
element dispBeamColumn   2011    2011  2012     $np      $beamSec     2
element dispBeamColumn   2012    2012  2013     $np      $beamSec     2
element dispBeamColumn   2013    2013  2014     $np      $beamSec     2
element dispBeamColumn   2014    2014  2015     $np      $beamSec     2
element dispBeamColumn   2015    2015  2016     $np      $beamSec     2
element dispBeamColumn   2016    2016  2012     $np      $beamSec     2
element dispBeamColumn   2017    2012  2017     $np      $beamSec     2
element dispBeamColumn   2018    2017  2018     $np      $beamSec     2
element dispBeamColumn   2019    2018  2019     $np      $beamSec     2
element dispBeamColumn   2110    2019   22      $np      $beamSec     2

element dispBeamColumn   2020     22   2021     $np      $beamSec     2
element dispBeamColumn   2021    2021  2022     $np      $beamSec     2
element dispBeamColumn   2022    2022  2023     $np      $beamSec     2
element dispBeamColumn   2023    2023  2024     $np      $beamSec     2
element dispBeamColumn   2024    2024  2025     $np      $beamSec     2
element dispBeamColumn   2025    2025  2026     $np      $beamSec     2
element dispBeamColumn   2026    2026  2022     $np      $beamSec     2
element dispBeamColumn   2027    2022  2027     $np      $beamSec     2
element dispBeamColumn   2028    2027  2028     $np      $beamSec     2
element dispBeamColumn   2029    2028  2029     $np      $beamSec     2
element dispBeamColumn   2220    2029   23      $np      $beamSec     2

element dispBeamColumn   2030     23   2031     $np      $beamSec     2
element dispBeamColumn   2031    2031  2032     $np      $beamSec     2
element dispBeamColumn   2032    2032  2033     $np      $beamSec     2
element dispBeamColumn   2033    2033  2034     $np      $beamSec     2
element dispBeamColumn   2034    2034  2035     $np      $beamSec     2
element dispBeamColumn   2035    2035  2036     $np      $beamSec     2
element dispBeamColumn   2036    2036  2032     $np      $beamSec     2
element dispBeamColumn   2037    2032  2037     $np      $beamSec     2
element dispBeamColumn   2038    2037  2038     $np      $beamSec     2
element dispBeamColumn   2039    2038  2039     $np      $beamSec     2
element dispBeamColumn   2330    2039   24      $np      $beamSec     2

element dispBeamColumn   2040     24   2041     $np      $beamSec     2
element dispBeamColumn   2041    2041  2042     $np      $beamSec     2
element dispBeamColumn   2042    2042  2043     $np      $beamSec     2
element dispBeamColumn   2043    2043  2044     $np      $beamSec     2
element dispBeamColumn   2044    2044  2045     $np      $beamSec     2
element dispBeamColumn   2045    2045  2046     $np      $beamSec     2
element dispBeamColumn   2046    2046  2042     $np      $beamSec     2
element dispBeamColumn   2047    2042  2047     $np      $beamSec     2
element dispBeamColumn   2048    2047  2048     $np      $beamSec     2
element dispBeamColumn   2049    2048  2049     $np      $beamSec     2
element dispBeamColumn   2440    2049   21      $np      $beamSec     2

element dispBeamColumn   3010     31   3011     $np      $beamSec     2
element dispBeamColumn   3011    3011  3012     $np      $beamSec     2
element dispBeamColumn   3012    3012  3013     $np      $beamSec     2
element dispBeamColumn   3013    3013  3014     $np      $beamSec     2
element dispBeamColumn   3014    3014  3015     $np      $beamSec     2
element dispBeamColumn   3015    3015  3016     $np      $beamSec     2
element dispBeamColumn   3016    3016  3012     $np      $beamSec     2
element dispBeamColumn   3017    3012  3017     $np      $beamSec     2
element dispBeamColumn   3018    3017  3018     $np      $beamSec     2
element dispBeamColumn   3019    3018  3019     $np      $beamSec     2
element dispBeamColumn   3110    3019   32      $np      $beamSec     2

element dispBeamColumn   3020     32   3021     $np      $beamSec     2
element dispBeamColumn   3021    3021  3022     $np      $beamSec     2
element dispBeamColumn   3022    3022  3023     $np      $beamSec     2
element dispBeamColumn   3023    3023  3024     $np      $beamSec     2
element dispBeamColumn   3024    3024  3025     $np      $beamSec     2
element dispBeamColumn   3025    3025  3026     $np      $beamSec     2
element dispBeamColumn   3026    3026  3022     $np      $beamSec     2
element dispBeamColumn   3027    3022  3027     $np      $beamSec     2
element dispBeamColumn   3028    3027  3028     $np      $beamSec     2
element dispBeamColumn   3029    3028  3029     $np      $beamSec     2
element dispBeamColumn   3220    3029   33      $np      $beamSec     2

element dispBeamColumn   3030     33   3031     $np      $beamSec     2
element dispBeamColumn   3031    3031  3032     $np      $beamSec     2
element dispBeamColumn   3032    3032  3033     $np      $beamSec     2
element dispBeamColumn   3033    3033  3034     $np      $beamSec     2
element dispBeamColumn   3034    3034  3035     $np      $beamSec     2
element dispBeamColumn   3035    3035  3036     $np      $beamSec     2
element dispBeamColumn   3036    3036  3032     $np      $beamSec     2
element dispBeamColumn   3037    3032  3037     $np      $beamSec     2
element dispBeamColumn   3038    3037  3038     $np      $beamSec     2
element dispBeamColumn   3039    3038  3039     $np      $beamSec     2
element dispBeamColumn   3330    3039   34      $np      $beamSec     2

element dispBeamColumn   3040     34   3041     $np      $beamSec     2
element dispBeamColumn   3041    3041  3042     $np      $beamSec     2
element dispBeamColumn   3042    3042  3043     $np      $beamSec     2
element dispBeamColumn   3043    3043  3044     $np      $beamSec     2
element dispBeamColumn   3044    3044  3045     $np      $beamSec     2
element dispBeamColumn   3045    3045  3046     $np      $beamSec     2
element dispBeamColumn   3046    3046  3042     $np      $beamSec     2
element dispBeamColumn   3047    3042  3047     $np      $beamSec     2
element dispBeamColumn   3048    3047  3048     $np      $beamSec     2
element dispBeamColumn   3049    3048  3049     $np      $beamSec     2
element dispBeamColumn   3440    3049   31      $np      $beamSec     2

element dispBeamColumn   4010     41   4011     $np      $beamSec     2
element dispBeamColumn   4011    4011  4012     $np      $beamSec     2
element dispBeamColumn   4012    4012  4013     $np      $beamSec     2
element dispBeamColumn   4013    4013  4014     $np      $beamSec     2
element dispBeamColumn   4014    4014  4015     $np      $beamSec     2
element dispBeamColumn   4015    4015  4016     $np      $beamSec     2
element dispBeamColumn   4016    4016  4012     $np      $beamSec     2
element dispBeamColumn   4017    4012  4017     $np      $beamSec     2
element dispBeamColumn   4018    4017  4018     $np      $beamSec     2
element dispBeamColumn   4019    4018  4019     $np      $beamSec     2
element dispBeamColumn   4110    4019   42      $np      $beamSec     2

element dispBeamColumn   4020     42   4021     $np      $beamSec     2
element dispBeamColumn   4021    4021  4022     $np      $beamSec     2
element dispBeamColumn   4022    4022  4023     $np      $beamSec     2
element dispBeamColumn   4023    4023  4024     $np      $beamSec     2
element dispBeamColumn   4024    4024  4025     $np      $beamSec     2
element dispBeamColumn   4025    4025  4026     $np      $beamSec     2
element dispBeamColumn   4026    4026  4022     $np      $beamSec     2
element dispBeamColumn   4027    4022  4027     $np      $beamSec     2
element dispBeamColumn   4028    4027  4028     $np      $beamSec     2
element dispBeamColumn   4029    4028  4029     $np      $beamSec     2
element dispBeamColumn   4220    4029   43      $np      $beamSec     2

element dispBeamColumn   4030     43   4031     $np      $beamSec     2
element dispBeamColumn   4031    4031  4032     $np      $beamSec     2
element dispBeamColumn   4032    4032  4033     $np      $beamSec     2
element dispBeamColumn   4033    4033  4034     $np      $beamSec     2
element dispBeamColumn   4034    4034  4035     $np      $beamSec     2
element dispBeamColumn   4035    4035  4036     $np      $beamSec     2
element dispBeamColumn   4036    4036  4032     $np      $beamSec     2
element dispBeamColumn   4037    4032  4037     $np      $beamSec     2
element dispBeamColumn   4038    4037  4038     $np      $beamSec     2
element dispBeamColumn   4039    4038  4039     $np      $beamSec     2
element dispBeamColumn   4330    4039   44      $np      $beamSec     2

element dispBeamColumn   4040     44   4041     $np      $beamSec     2
element dispBeamColumn   4041    4041  4042     $np      $beamSec     2
element dispBeamColumn   4042    4042  4043     $np      $beamSec     2
element dispBeamColumn   4043    4043  4044     $np      $beamSec     2
element dispBeamColumn   4044    4044  4045     $np      $beamSec     2
element dispBeamColumn   4045    4045  4046     $np      $beamSec     2
element dispBeamColumn   4046    4046  4042     $np      $beamSec     2
element dispBeamColumn   4047    4042  4047     $np      $beamSec     2
element dispBeamColumn   4048    4047  4048     $np      $beamSec     2
element dispBeamColumn   4049    4048  4049     $np      $beamSec     2
element dispBeamColumn   4440    4049   41      $np      $beamSec     2

set p  24.0
set g [expr 9.8*0.2];            
set m 10.0;
set i [expr $m*($bx*$bx+$by*$by)/12.0]
mass 25  $m $m  0  0  0 $i
mass 35  $m $m  0  0  0 $i
mass 45  $m $m  0  0  0 $i
pattern Plain 1 {Series -time {0.0 2.0 100000.0} -values {0.0 1.0 1.0} } {          
   foreach node {21 22 23 24  31 32 33 34  41 42 43 44} {
      load $node 0.0 0.0 -$p 0.0 0.0 0.0
   }
}

constraints Transformation                        
test EnergyIncr 1.0e-16  20  2
integrator LoadControl 1 1 1 1
algorithm Newton
system BandGeneral
numberer RCM
analysis Static 
analyze 1
set startT [clock seconds]

wipeAnalysis
loadConst -time 0.0

set tabasFN "Path -filePath tabasFN.txt -dt 0.02 -factor $g"
set tabasFP "Path -filePath tabasFP.txt -dt 0.02 -factor $g"

pattern UniformExcitation  2      1   -accel      $tabasFN
pattern UniformExcitation  3      2   -accel      $tabasFP
recorder Node -file fine.out -node 45 -dof 1 2 disp

test EnergyIncr 1.0e-16 20  2
algorithm Newton
system BandGeneral
constraints Transformation
numberer RCM
integrator Newmark   0.55 0.275625   
analysis Transient

for { set i 2 }  { $i <= 880} { incr i}  {
    analyze 1 0.01
}

set endT [clock seconds]
puts "Finish time: [expr $endT-$startT] seconds."

wipe