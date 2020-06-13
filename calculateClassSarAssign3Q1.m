function classSar= calculateClassSarAssign3Q1(maxPow,d)
%electrical properties
skinCond=0.496;
skinDens=1010;
fatCond=0.069;
fatDens=920;
boneCond=0.174;
boneDens=1810;
brainCond=0.796;
brainDens=1030;
%structural components
skinRads=0.0813;
fatRads=0.0803;
boneRads=0.0777;
brainRads=0.0711;

% initiating classSar matrix
% classSar=zeros(1,4);
%skinSar
classSar(1,1)=calculateSarAssign3Q1(maxPow,d,skinCond,skinDens,skinRads);
%fatSar
classSar(1,2)=calculateSarAssign3Q1(maxPow,d,fatCond,fatDens,fatRads);
%boneSar
classSar(1,3)=calculateSarAssign3Q1(maxPow,d,boneCond,boneDens,boneRads);
%brainSar
classSar(1,4)=calculateSarAssign3Q1(maxPow,d,brainCond,brainDens,brainRads);

end