function assign3q1(Pt)
%assign3
%question1
%distances to be considered
d=[1,5,10,50,100,500,1000];
%one metre from transmitter
oneM=calculateClassSarAssign3Q1(Pt,d(1));
oneM
%five metre from transmitter
fiveM=calculateClassSarAssign3Q1(Pt,d(2));
fiveM
%ten metre from transmitter
tenM=calculateClassSarAssign3Q1(Pt,d(3));
tenM
%fifty metre from transmitter
fiftyM=calculateClassSarAssign3Q1(Pt,d(4));
fiftyM
%one Hundred metre from transmitter
oneHM=calculateClassSarAssign3Q1(Pt,d(5));
oneHM
%five Hundred metre from transmitter
fiveHM=calculateClassSarAssign3Q1(Pt,d(6));
fiveHM
%one thousand metre from transmitter
oneTM=calculateClassSarAssign3Q1(Pt,d(7));
oneTM
end


