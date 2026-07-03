sets

i jobs /job1*job15/
j machines /m1*m4/
k positions /pos1*pos15/

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
job8        30
job9        30
job10       30
job11       30
job12       30
job13       30
job14       30
job15       30

/

RR(j)
/
m1        1
m2        2
m3        3
m4        4
/


SM(j)
/
m1        10
m2        5
m3        3
m4        7

/

FM(j)
/
m1        12
m2        17
m3        8
m4        20
/


cj(j)
/
m1        100
m2        150
m3        120
m4        140
/

BIGM /1000/


table P(i,j)

            m1        m2        m3        m4
job1        4         5         5         3
job2        6         3         3         5
job3        4         4         5         7
job4        4         6         7         2
job5        7         2         2         9
job6        3         8         2         4
job7        2         1         8         6
job8        4         6         2         3
job9        7         2         5         9
job10       3         8         5         1
job11       2         1         5         4
job12       7         6         3         3
job13       7         2         2         9
job14       3         8         2         4
job15       2         1         8         6

;

table pre(i,o)
           job1      job2     job3     job4     job5     job6     job7     job8     job9     job10    job11    job12     job13     job14     job15
job1        0        0        1        1        0        0        0        0        0        0        0        0         0         0         0
job2        0        0        0        0        1        1        1        0        0        0        0        0         0         0         0
job3        0        0        0        0        0        0        0        1        1        0        0        0         0         0         0
job4        0        0        0        0        0        0        0        0        0        1        1        1         0         0         0
job5        0        0        0        0        0        0        0        0        0        0        0        0         1         1         0
job6        0        0        0        0        0        0        0        0        0        0        0        0         0         0         1
job7        0        0        0        0        0        0        0        0        0        0        0        0         0         0         0
job8        0        0        0        0        0        0        0        0        0        0        0        0         0         0         0
job9        0        0        0        0        0        0        0        0        0        0        0        0         0         0         0
job10       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0
job11       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0
job12       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0
job13       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0
job14       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0
job15       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0

;


table cjl(j,l)

          m1           m2           m3           m4
m1        0            10           10           10
m2        10           0            10           10
m3        10           10           0            10
m4        10           10           10           0
;


table V(i,o)
           job1      job2     job3     job4     job5     job6     job7     job8     job9     job10    job11    job12     job13     job14     job15
job1        0        0        10       15       0        0        0        0        0        0        0        0         0         0         0
job2        0        0        0        0        20       10       15       0        0        0        0        0         0         0         0
job3        0        0        0        0        0        0        0        10       20       0        0        0         0         0         0
job4        0        0        0        0        0        0        0        0        0        15       20       10        0         0         0
job5        0        0        0        0        0        0        0        0        0        0        0        0         20        20        0
job6        0        0        0        0        0        0        0        0        0        0        0        0         0         0         25
job7        0        0        0        0        0        0        0        0        0        0        0        0         0         0         0
job8        0        0        0        0        0        0        0        0        0        0        0        0         0         0         0
job9        0        0        0        0        0        0        0        0        0        0        0        0         0         0         0
job10       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0
job11       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0
job12       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0
job13       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0
job14       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0
job15       0        0        0        0        0        0        0        0        0        0        0        0         0         0         0

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

obj3 .. z3 =e= z1+z2 ;


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


option mip=cplex,threads=0,optca=0,optcr=0,reslim=3600,limrow=1000,limcol=1000;

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

solve test us mip min z1 ;
solve test us mip min z2 ;
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
