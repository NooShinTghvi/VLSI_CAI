* second part
***** Library *****
.prot
.inc '45nm_PTM.txt'
.unprot

***** Params *****
.param  
+VDD = 1V
+GND = 0V
+Lmin = 45n
+L_d = 100n
+W_d = 1u

***** Temperature *****
.temp	25

***** Sources *****
*V      N+  N-  Pulse   V1  V2  TD  TR  TF  PW  PER
Vsupply	Vm	0	DC	VDD
VinA    A	0	DC	VDD
*Pulse  GND  VDD 0  1p 1p 2000p 5000p

***** Component *****
Mn1     Vm      A       GND     GND     nmos    l='L_d'    w='W_d'


***** Type of Analysis *****
***** Transient analysis:
.tran	0.1ns     200ns   1ns

****
.print  tran lx7(Mn1)

.end
