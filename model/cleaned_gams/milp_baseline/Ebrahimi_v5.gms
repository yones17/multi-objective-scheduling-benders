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

BIGM /100000/


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
