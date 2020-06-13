function classSar4G= calculateClassSar4GAssign3Q2(maxPow)
skinImp=61.803;
skinCond=1.25;
skinDens=1010;

fatImp=123.094;
fatCond=0.26;
lowCond=0.26;
fatDens=920;

boneImp=93.093;
boneCond=0.45;
boneDens=1810;

brainImp=57.345;
brainCond=1.29;
brainDens=1030;

fc=1.8*10^9;

phoned1=0;
phoned2=2*10^(-2);

classSar4G(1,1)=calculateSARAssign3Q2(fc,maxPow,phoned1,skinCond,skinImp,skinDens,0,lowCond);
classSar4G(1,2)=calculateSARAssign3Q2(fc,maxPow,phoned1,fatCond,fatImp,fatDens,0,lowCond);
classSar4G(1,3)=calculateSARAssign3Q2(fc,maxPow,phoned1,boneCond,boneImp,boneDens,0,lowCond);
classSar4G(1,4)=calculateSARAssign3Q2(fc,maxPow,phoned1,brainCond,brainImp,brainDens,1,lowCond);

classSar4G(2,1)=calculateSARAssign3Q2(fc,maxPow,phoned2,skinCond,skinImp,skinDens,0,lowCond);
classSar4G(2,2)=calculateSARAssign3Q2(fc,maxPow,phoned2,fatCond,fatImp,fatDens,0,lowCond);
classSar4G(2,3)=calculateSARAssign3Q2(fc,maxPow,phoned2,boneCond,boneImp,boneDens,0,lowCond);
classSar4G(2,4)=calculateSARAssign3Q2(fc,maxPow,phoned2,brainCond,brainImp,brainDens,1,lowCond);