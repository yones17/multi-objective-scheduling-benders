sets

i jobs /job1*job20/
j machines /m1*m5/
k positions /pos1*pos20/

alias(i,o)
alias(j,l)
alias(k,kp)

;
parameters

r(i)
/
job1        0
job2        0
job3        0
job4        0
job5        0
job6        0
job7        0
job8        0
job9        0
job10       0
job11       0
job12       0
job13       0
job14       0
job15       0
job16       0
job17       0
job18       0
job19       0
job20       0
/

d(i)
/
job1        15
job2        13
job3        17
job4        12
job5        23
job6        17
job7        25
job8        100
job9        100
job10       100
job11       100
job12       100
job13       100
job14       100
job15       100
job16       100
job17       100
job18       100
job19       100
job20       100
/

RR(j)
/
m1        1
m2        2
m3        3
m4        4
m5        5
/


SM(j)
/
m1        10
m2        5
m3        3
m4        7
m5        10
/

FM(j)
/
m1        12
m2        17
m3        8
m4        20
m5        14
/


cj(j)
/
m1        100
m2        150
m3        120
m4        140
m5        170
/

BIGM /1000/


table P(i,j)

            m1        m2        m3        m4        m5
job1        4         5         5         3         7
job2        6         3         3         5         1
job3        4         4         5         7         4
job4        4         6         7         2         8
job5        7         2         2         9         1
job6        3         8         2         4         5
job7        2         1         8         6         1
job8        4         6         2         3         6
job9        7         2         5         9         9
job10       3         8         5         1         3
job11       2         1         5         4         8
job12       7         6         3         3         1
job13       7         2         2         9         1
job14       3         8         2         4         5
job15       2         1         8         6         1
job16       4         6         2         3         6
job17       7         2         5         9         9
job18       3         8         5         1         3
job19       2         1         5         4         8
job20       7         6         3         3         1
;

table pre(i,o)
           job1      job2     job3     job4     job5     job6     job7     job8     job9     job10    job11    job12     job13     job14     job15     job16     job17    job18    job19    job20
job1        0        0        1        1        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job2        0        0        0        0        1        1        1        0        0        0        0        0         0         0         0         0         0        0        0        0
job3        0        0        0        0        0        0        0        1        1        0        0        0         0         0         0         0         0        0        0        0
job4        0        0        0        0        0        0        0        0        0        1        1        1         0         0         0         0         0        0        0        0
job5        0        0        0        0        0        0        0        0        0        0        0        0         1         1         0         0         0        0        0        0
job6        0        0        0        0        0        0        0        0        0        0        0        0         0         0         1         1         1        0        0        0
job7        0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        1        1        1
job8        0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job9        0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job10       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job11       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job12       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job13       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job14       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job15       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job16       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job17       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job18       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job19       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job20       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
;


table cjl(j,l)

          m1           m2           m3           m4           m5
m1        0            10           10           10           10
m2        10           0            10           10           10
m3        10           10           0            10           10
m4        10           10           10           0            10
m5        10           10           10           10           0
;


table V(i,o)
           job1      job2     job3     job4     job5     job6     job7     job8     job9     job10    job11    job12     job13     job14     job15     job16     job17    job18    job19    job20
job1        0        0        10       15       0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job2        0        0        0        0        20       10       15       0        0        0        0        0         0         0         0         0         0        0        0        0
job3        0        0        0        0        0        0        0        10       20       0        0        0         0         0         0         0         0        0        0        0
job4        0        0        0        0        0        0        0        0        0        15       20       10        0         0         0         0         0        0        0        0
job5        0        0        0        0        0        0        0        0        0        0        0        0         20        20        0         0         0        0        0        0
job6        0        0        0        0        0        0        0        0        0        0        0        0         0         0         25        30        30       0        0        0
job7        0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        25       30       20
job8        0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job9        0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job10       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job11       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job12       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job13       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job14       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job15       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job16       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job17       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job18       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job19       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0
job20       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0         0         0        0        0        0

;


********************************************************************************
* Step 0: Initialization of BD**************************************************

Set iter /0*200/

Parameters
MaxRE   /1E-8/
LB
UB
;
LB=0;
UB=inf;
********************************************************************************

********************************************************************************
* Step 1: Subproblem (SP) of BD*************************************************

Free variables
Z_SP    ;

Positive variable
C(i)
st(j,k)
T(i)
;

Parameter
X_fix(i,j,k)
y_fix(j,k)
A_fix(i,j,o,l,k,kp)
;
*X_fix(i,j,k)=uniformint(0,1);
*y_fix(j,k)=uniformint(0,1);
*A_fix(i,j,o,l,k,kp)=uniformint(0,1);
Equations
e1_obj
eq1
eq2
eq3
eq4
eq5
eq6
eq7
eq8
eq9
eq10
eq11
eq12
eq13
;


e1_obj         ..    Z_SP=e= sum(i,T(i))
+sum((i,j,k),cj(j)*P(i,j)*X_fix(i,j,k))
+sum((i,o,j,l,k,kp)$(pre(i,o)),A_fix(i,j,o,l,k,kp)*cjl(j,l)*V(i,o));

eq1(i)         .. T(i) -C(i)=g=  - d(i) ;
eq6(j) .. st(j,'pos1') =g= RR(j) ;
eq7(j,k) .. st(j,k) =g= sum(i,X_fix(i,j,k) * r(i)) ;
eq8(j,k)$(ord(k)<card(k)) .. st(j,k+1)-st(j,k) =g=  + 0 ;
eq9(j,k) .. st(j,k)  =l= SM(j) + BIGM * y_fix(j,k)- sum(i,X_fix(i,j,k) * P(i,j)) ;
eq10(j,k) .. st(j,k) =g= FM(j) - BIGM*(1-y_fix(j,k)) ;
eq11(i,j,k) .. C(i) -st(j,k)=g=  + P(i,j) - BIGM*(1-X_fix(i,j,k)) ;
eq12(i,o)$(pre(i,o)) .. C(i) - C(o) =g= sum((j,k), X_fix(i,j,k) * P(i,j)) ;


Model SP
/
e1_obj
eq1
eq6
eq7
eq8
eq9
eq10
eq11
eq12
/
;

*solve sp us mip min z_sp;
*display z_sp.l;

********************************************************************************
********************************************************************************



********************************************************************************
* Step 2: Feasibility Check Problem  (FCP)**************************************

Free variables
Z_FCP    ;

Positive variable
S1 "handle infeasible constraint"
;



Equations
obj_FCP       'obective function of SP'
eq9_FCP      'Constraints of SP'
;


obj_FCP        ..    Z_FCP=e= s1 ;

eq9_FCP(j,k)   .. st(j,k) + sum(i,X_fix(i,j,k) * P(i,j))-s1 =l= SM(j) + BIGM * y_fix(j,k) ;




Model FCP
/
obj_FCP
eq1
eq6
eq7
eq8
eq9_FCP
eq10
eq11
eq12

/
;

*solve fcp us mip min z_fcp;
*display z_fcp.l;

********************************************************************************
********************************************************************************




********************************************************************************
* Step 3: Master Problem (MP) of BD*********************************************

Free variables
Z_MP    ;

Binary variable
X(i,j,k)

y(j,k)

A(i,j,o,l,k,kp)
;

Positive Variable Say;


Sets
OC(iter)
FC(iter)
;

OC(iter)= NO;
FC(iter)= NO;

Parameter
eq1_fix(i,iter)
eq6_fix(j,iter)
eq7_fix(j,k,iter)
eq8_fix(j,k,iter)
eq9_fix(j,k,iter)
eq10_fix(j,k,iter)
eq11_fix(i,j,k,iter)
eq12_fix(i,o,iter)
;




Equations
obj_MP       'obective function of MP'
OptimalityCut(iter)
FeasibilityCut(iter)
;

obj_MP         ..    z_MP =e=
sum((i,j,k), cj(j) * P(i,j) * X(i,j,k))
+sum((i,o,j,l,k,kp)$(pre(i,o)) , A(i,j,o,l,k,kp) * cjl(j,l) * V(i,o))
+Say;

eq2(i,j,o,l,k,kp)$(pre(i,o)) ..   A(i,j,o,l,k,kp) =l= ( X(i,j,k) + X(o,l,kp) )/ 2 ;
eq3(i,j,o,l,k,kp)$(pre(i,o)) ..  X(i,j,k) + X(o,l,kp) -2*A(i,j,o,l,k,kp) =l= 1 ;
eq4(i) .. sum((j,k),X(i,j,k)) =e= 1 ;
eq5(j,k) .. sum(i,X(i,j,k)) =l= 1 ;
eq13(j,k)$(ord(k)<card(k)) .. sum((i),X(i,j,k)) =g= sum((i),X(i,j,k+1));

OptimalityCut(OC)..     Say  =g=
sum({i},-d(i)*eq1_fix(i,oc))
+sum({j},RR(j)*eq6_fix(j,oc))
+sum({j,k},(sum(i,X(i,j,k)*r(i)))*eq7_fix(j,k,oc))

+sum({j,k}$(ord(k)<card(k)),(sum(i,X(i,j,k)*P(i,j)) )*eq8_fix(j,k,oc))
+sum({j,k},(SM(j)+BIGM*y(j,k)-sum(i,X(i,j,k)*P(i,j)))*eq9_fix(j,k,oc))
+sum({j,k},(FM(j)-BIGM*(1-y(j,k)))*eq10_fix(j,k,oc))
+sum({i,j,k},(P(i,j)-BIGM*(1-X(i,j,k)))*eq11_fix(i,j,k,oc))
+sum({i,o}$(pre(i,o)),(sum((j,k),X(i,j,k)*P(i,j)))*eq12_fix(i,o,oc))
;



FeasibilityCut(FC)..
sum({i},-d(i)*eq1_fix(i,FC))
+sum({j},RR(j)*eq6_fix(j,FC))
+sum({j,k},(sum(i,X(i,j,k)*r(i)))*eq7_fix(j,k,FC))
+sum({j,k}$(ord(k)<card(k)),(sum(i,X(i,j,k)*P(i,j)) )*eq8_fix(j,k,FC))
+sum({j,k},(SM(j)+BIGM*y(j,k)-sum(i,X(i,j,k)*P(i,j)))*eq9_fix(j,k,FC))
+sum({j,k},(FM(j)-BIGM*(1-y(j,k)))*eq10_fix(j,k,FC))
+sum({i,j,k},(P(i,j)-BIGM*(1-X(i,j,k)))*eq11_fix(i,j,k,FC))
+sum({i,o}$(pre(i,o)),(sum((j,k),X(i,j,k)*P(i,j)))*eq12_fix(i,o,FC))

=l= 0;



Model MP
/
obj_MP
eq2
eq3
eq4
eq5
eq13
OptimalityCut
FeasibilityCut
/
;
********************************************************************************
********************************************************************************




********************************************************************************
* Step 4: Main Loop for implentation of BD**************************************


Parameters
Result(iter,*)
Converged /No/
Iteration
Gap
Y_Feasibility
;

eq1_fix(i,iter)= 0;
eq6_fix(j,iter)= 0;
eq7_fix(j,k,iter)= 0;
eq8_fix(j,k,iter)= 0;
eq9_fix(j,k,iter)= 0;
eq10_fix(j,k,iter)= 0;
eq11_fix(i,j,k,iter)= 0;
eq12_fix(i,o,iter) = 0;

Options
LP = CPLEX
MIP = CPLEX
OPTCR = 0
threads=0,optca=0,reslim=300,limrow=1000,limcol=1000;
;

Loop(iter$(Not(Converged)),


*************** Solve MP to update LB and y

Solve MP us MIP MIN Z_MP ;

Abort$(MP.ModelStat = 2) "Your OP Model is not fasible" ;

LB=Z_MP.l;
Result(iter,'LB')=LB;
X_fix(i,j,k)=X.l(i,j,k);
y_fix(j,k)=y.l(j,k);
A_fix(i,j,o,l,k,kp)=A.l(i,j,o,l,k,kp);

******************************************

***** Solve FSP to check Feasibility
Solve FCP us LP MIN Z_FCP;

if( Z_FCP.l = 0,
*Feasible Situtation

**Solve SP to update UB and u
Solve SP us LP MIN Z_SP;
UB= Z_SP.l;
OC(iter)=YES;
Y_Feasibility = YES;
Result(iter,'UB')=UB;

eq1_fix(i,iter)= eq1.m(i);
eq6_fix(j,iter)= eq6.m(j);
eq7_fix(j,k,iter)= eq7.m(j,k);
eq8_fix(j,k,iter)= eq8.m(j,k);
eq9_fix(j,k,iter)= eq9.m(j,k);
eq10_fix(j,k,iter)= eq10.m(j,k);
eq11_fix(i,j,k,iter)= eq11.m(i,j,k);
eq12_fix(i,o,iter) = eq12.m(i,o);

else
*Infeasible Situtation
Y_Feasibility = NO;
FC(iter)=YES;

eq1_fix(i,iter)= eq1.m(i);
eq6_fix(j,iter)= eq6.m(j);
eq7_fix(j,k,iter)= eq7.m(j,k);
eq8_fix(j,k,iter)= eq8.m(j,k);
eq9_fix(j,k,iter)= eq9_FCP.m(j,k);
eq10_fix(j,k,iter)= eq10.m(j,k);
eq11_fix(i,j,k,iter)= eq11.m(i,j,k);
eq12_fix(i,o,iter) = eq12.m(i,o);


)
;

Result(iter,'Feasibility')=Y_Feasibility;
*******************************************************************************




* Stop Criteria

Gap = abs((UB - LB)/ UB );

Result(iter,'Gap')=Gap;

if(Gap <= MaxRE,
Converged = YES;
)
;

Iteration=ord(iter)-1;
Display
"-----------Iteration-----------"
Iteration
Y_Feasibility
LB
UB
Gap

"-----------Variable-------------"
"Y"
X_fix

y_fix

A_fix


C.l

st.l

T.l


)
;
*End of BD Main Loop


Display
Result
parameter zz1,zz2;

zz1=sum(i,T.l(i));
zz2=+sum((i,j,k),cj(j)*P(i,j)*X_fix(i,j,k))
+sum((i,o,j,l,k,kp)$(pre(i,o)),A_fix(i,j,o,l,k,kp)*cjl(j,l)*V(i,o));
display

zz1,zz2;


