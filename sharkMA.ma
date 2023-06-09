[top]
components : shark

[shark]
type : cell
dim : (5, 5)
delay : transport
defaultDelayTime  : 100
border : wrapped 
neighbors : shark(-1,0) shark(0,0) shark(1,0) shark(0,1) shark(0,-1) shark(-1,1) shark(1,-1) shark(0,-2) shark(-1,-1)
initialvalue : 0
initialrowvalue :  0      20010
initialrowvalue :  1      00200
initialrowvalue :  2      20120
initialrowvalue :  3      02102
initialrowvalue :  4      10101
localtransition : eco-rule

[eco-rule]
rule : 1 100 { (0,0)=2 and (0,-1) = 1 }
rule : 0 100 {(0,0)=2 and (1,0) = 1 }
rule : 2 100 {(0,0)=2 and (0,1)=2 }
rule : 0 100 {(0,0)=2 and (0,1)=0}


rule : 1 100 {(0,0)=0 and (0,-1)=2 and (-1,0)=1 and (-1,1)=1 }




rule : 0 100 {(0,0)=0 and (0,-1)=2 and ( (-1,-1)=1 or (0,-2)=1 ) }

rule : 0 100 { (0,0) = 2 and ( (0,1) != 1 and (0,-1) != 1 and (1,0) != 1 and (-1,0) != 1 ) }
rule : 2 100 {(0,0)=0 and (0,-1)=2 }

rule : 1 100 {(0,0)=1 and (0,1)=1 and (1,-1)=1 }

rule : 1 100 { (0,0) = 1 and ( (0,1) = 1 and (1,0) != 0 ) }
rule : 1 100 { (0,0) = 1 and (1,-1) = 1 and (1,0) = 0 and (0,1) = 1 }
rule : 0 100 { (0,0) = 1 and (1,0) = 0 }
rule : 1 100 { (0,0) = 0 and (0,-1) = 1 }
rule : 0 100 { (0,0) = 1 and (-1,0) =0 }
rule : 0 100 { (0,0) = 0 and (-1,0) = 1 and (-1,1) = 0 }
rule : 1 100 { (0,0) = 0 and (-1,0) = 1 and (-1,1) = 1 }
rule : 0 100 { t } 
