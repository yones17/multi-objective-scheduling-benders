sets

i jobs /job1*job7/
j machines /m1*m2/
k positions /pos1*pos7/

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
/

d(i)
/
job1        14
job2        12
job3        100
job4        100
job5        100
job6        300
job7        100
/

RR(j)
/
m1        1
m2        2
/


SM(j)
/
m1        10
m2        5
/

FM(j)
/
m1        12
m2        17
/


cj(j)
/
m1        10
m2        20
/

BIGM /1000/


table P(i,j)

            m1        m2
job1        4         5
job2        6         3
job3        4         4
job4        4         6
job5        7         2
job6        3         8
job7        2         1

;

table pre(i,o)
           job1      job2     job3     job4     job5     job6     job7
job1        0        0        1        1        0        0        0
job2        0        0        0        0        1        1        1
job3        0        0        0        0        0        0        0
job4        0        0        0        0        0        0        0
job5        0        0        0        0        0        0        0
job6        0        0        0        0        0        0        0
job7        0        0        0        0        0        0        0


;


table cjl(j,l)

          m1           m2
m1        0            10
m2        20           0

;


table V(i,o)
           job1      job2     job3     job4     job5     job6     job7
job1        0        0        10       20       0        0        0
job2        0        0        0        0        20       15       20
job3        0        0        0        0        0        0        0
job4        0        0        0        0        0        0        0
job5        0        0        0        0        0        0        0
job6        0        0        0        0        0        0        0
job7        0        0        0        0        0        0        0

;


variable
z1
z2
z3
;

binary variables

X(i,j,k)

y(j,k)

A(i,j,o,l,k,kp);



positive variables

C(i)

st(j,k)

T(i)
;



equation
obj1
obj2
obj3
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


obj1 .. z1 =e= sum(i,T(i)) ;

obj2 .. z2 =e= sum((i,j,k), cj(j) * P(i,j) * X(i,j,k)) + sum((i,o,j,l,k,kp)$(pre(i,o)) , A(i,j,o,l,k,kp) * cjl(j,l) * V(i,o)) ;

obj3 .. z3 =e=  z1+ z2 ;


eq1(i) .. T(i) =g= C(i) - d(i) ;


eq2(i,j,o,l,k,kp)$(pre(i,o)) ..   A(i,j,o,l,k,kp) =l= ( X(i,j,k) + X(o,l,kp) )/ 2 ;

eq3(i,j,o,l,k,kp)$(pre(i,o)) ..  X(i,j,k) + X(o,l,kp) -2*A(i,j,o,l,k,kp) =l= 1 ;




eq4(i) .. sum((j,k),X(i,j,k)) =e= 1 ;

eq5(j,k) .. sum(i,X(i,j,k)) =l= 1 ;

eq6(j) .. st(j,'pos1') =g= RR(j) ;

eq7(j,k) .. st(j,k) =g= sum(i,X(i,j,k) * r(i)) ;

eq8(j,k)$(ord(k)<card(k)) .. st(j,k+1) =g= st(j,k) + sum(i,X(i,j,k) * P(i,j)) ;

eq9(j,k) .. st(j,k) + sum(i,X(i,j,k) * P(i,j)) =l= SM(j) + BIGM * y(j,k) ;

eq10(j,k) .. st(j,k) =g= FM(j) - BIGM*(1-y(j,k)) ;

eq11(i,j,k) .. C(i) =g= st(j,k) + P(i,j) - BIGM*(1-X(i,j,k)) ;

eq12(i,o)$(pre(i,o)) .. C(i) - sum((j,k), X(i,j,k) * P(i,j)) =g= C(o) ;

eq13(j,k)$(ord(k)<card(k)) .. sum((i),X(i,j,k)) =g= sum((i),X(i,j,k+1));


option mip=cplex;

model test
/
obj1
obj2
obj3
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
/
;

*solve test us mip min z1 ;
*solve test us mip min z2 ;
solve test us mip min z3 ;

*$ontext
display
z1.l
z2.l
X.l
y.l
st.l
C.l
T.l

;
*$offtext
