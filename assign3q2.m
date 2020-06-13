% 4G 

%d/labda
d=54.8*10^(-3)/0.16667;


n=[1,2,3];
CR(1,1)=1;
CR(1,2)= besselj(0,2*pi*d*n(1));
CR(1,3)= besselj(0,2*pi*d*n(2));
CR(1,4)= besselj(0,2*pi*d*n(3));
CR(2,1)= besselj(0,2*pi*d*n(1));
CR(2,2)= 1;
CR(2,3)= besselj(0,2*pi*d*n(1));
CR(2,4)= besselj(0,2*pi*d*n(2));
CR(3,1)= besselj(0,2*pi*d*n(2));
CR(3,2)= besselj(0,2*pi*d*n(1));
CR(3,3)= 1;
CR(3,4)= besselj(0,2*pi*d*n(1));
CR(4,1)= besselj(0,2*pi*d*n(3));
CR(4,2)= besselj(0,2*pi*d*n(2));
CR(4,3)= besselj(0,2*pi*d*n(1));
CR(4,4)= 1;
%correlation matrix
CR;

[Q,D]= svd(CR);
%power distribution of the antennas
D;
%Total power transmitted by all the antennas
Pt= 0.1995;
%power transmitted by each antenna
P1=(D(1,1)/4)*Pt
P2=(D(2,2)/4)*Pt
P3=(D(3,3)/4)*Pt
P4=(D(4,4)/4)*Pt

P1Array=calculateClassSar4GAssign3Q2(P1);
P1Array
P2Array=calculateClassSar4GAssign3Q2(P2);
P2Array
P3Array=calculateClassSar4GAssign3Q2(P3);
P3Array
P4Array=calculateClassSar4GAssign3Q2(P4);
P4Array


% 5G 

%d/labda
d2=21.9*10^(-3)/0.05;
n=[1,2,3,4,5,6,7];
C(1,1)=1;
C(1,2)=besselj(0,2*pi*d2*n(1));
C(1,3)=besselj(0,2*pi*d2*n(2));
C(1,4)=besselj(0,2*pi*d2*n(3));
C(1,5)=besselj(0,2*pi*d2*n(4));
C(1,6)=besselj(0,2*pi*d2*n(5));
C(1,7)=besselj(0,2*pi*d2*n(6));
C(1,8)=besselj(0,2*pi*d2*n(7));

C(2,1)=besselj(0,2*pi*d2*n(1));
C(2,2)=1;
C(2,3)=besselj(0,2*pi*d2*n(1));
C(2,4)=besselj(0,2*pi*d2*n(2));
C(2,5)=besselj(0,2*pi*d2*n(3));
C(2,6)=besselj(0,2*pi*d2*n(4));
C(2,7)=besselj(0,2*pi*d2*n(5));
C(2,8)=besselj(0,2*pi*d2*n(6));

C(3,1)=besselj(0,2*pi*d2*n(2));
C(3,2)=besselj(0,2*pi*d2*n(1));
C(3,3)=1;
C(3,4)=besselj(0,2*pi*d2*n(1));
C(3,5)=besselj(0,2*pi*d2*n(2));
C(3,6)=besselj(0,2*pi*d2*n(3));
C(3,7)=besselj(0,2*pi*d2*n(4));
C(3,8)=besselj(0,2*pi*d2*n(5));

C(4,1)=besselj(0,2*pi*d2*n(3));
C(4,2)=besselj(0,2*pi*d2*n(2));
C(4,3)=besselj(0,2*pi*d2*n(1));
C(4,4)=1;
C(4,5)=besselj(0,2*pi*d2*n(1));
C(4,6)=besselj(0,2*pi*d2*n(2));
C(4,7)=besselj(0,2*pi*d2*n(3));
C(4,8)=besselj(0,2*pi*d2*n(4));

C(5,1)=besselj(0,2*pi*d2*n(4));
C(5,2)=besselj(0,2*pi*d2*n(3));
C(5,3)=besselj(0,2*pi*d2*n(2));
C(5,4)=besselj(0,2*pi*d2*n(1));
C(5,5)=1;
C(5,6)=besselj(0,2*pi*d2*n(1));
C(5,7)=besselj(0,2*pi*d2*n(2));
C(5,8)=besselj(0,2*pi*d2*n(3));

C(6,1)=besselj(0,2*pi*d2*n(5));
C(6,2)=besselj(0,2*pi*d2*n(4));
C(6,3)=besselj(0,2*pi*d2*n(3));
C(6,4)=besselj(0,2*pi*d2*n(2));
C(6,5)=besselj(0,2*pi*d2*n(1));
C(6,6)=1;
C(6,7)=besselj(0,2*pi*d2*n(1));
C(6,8)=besselj(0,2*pi*d2*n(2));

C(7,1)=besselj(0,2*pi*d2*n(6));
C(7,2)=besselj(0,2*pi*d2*n(5));
C(7,3)=besselj(0,2*pi*d2*n(4));
C(7,4)=besselj(0,2*pi*d2*n(3));
C(7,5)=besselj(0,2*pi*d2*n(2));
C(7,6)=besselj(0,2*pi*d2*n(1));
C(7,7)=1;
C(7,8)=besselj(0,2*pi*d2*n(1));

C(8,1)=besselj(0,2*pi*d2*n(7));
C(8,2)=besselj(0,2*pi*d2*n(6));
C(8,3)=besselj(0,2*pi*d2*n(5));
C(8,4)=besselj(0,2*pi*d2*n(4));
C(8,5)=besselj(0,2*pi*d2*n(3));
C(8,6)=besselj(0,2*pi*d2*n(2));
C(8,7)=besselj(0,2*pi*d2*n(1));
C(8,8)=1;

%correlation matrix
C;

[X,P]= svd(C);
%power distribution of the antennas
P;
%Total power transmitted by all the antennas
P2t= 0.1;

%Power to the different antennas
L1=(P(1,1)/8)*P2t
L2=(P(2,2)/8)*P2t
L3=(P(3,3)/8)*P2t
L4=(P(4,4)/8)*P2t
L5=(P(5,5)/8)*P2t
L6=(P(6,6)/8)*P2t
L7=(P(7,7)/8)*P2t
L8=(P(8,8)/8)*P2t

%antenna 1
P2t1=calculateClassSar5GAssign3Q2(L1);
P2t2=calculateClassSar5GAssign3Q2(L2);
P2t3=calculateClassSar5GAssign3Q2(L3);
P2t4=calculateClassSar5GAssign3Q2(L4);
P2t5=calculateClassSar5GAssign3Q2(L5);
P2t6=calculateClassSar5GAssign3Q2(L6);
P2t7=calculateClassSar5GAssign3Q2(L7);
P2t8=calculateClassSar5GAssign3Q2(L8);

P2t1
P2t2
P2t3
P2t4
P2t5
P2t6
P2t7
P2t8



