function classSar5G= calculateClassSar5GAssign3Q2(maxPow)
skinImp=63.816;
skinCond=3.89;
skinDens=1010;

fatImp=120.428;
fatCond=0.872;
lowCond=0.872;
fatDens=920;

boneImp=96.698;
boneCond=2.23;
boneDens=1810;

brainImp=59.834;
brainCond=5.20;
brainDens=1030;

fc=6*10^9;

phoned1=0;
phoned2=2*10^(-2);

classSar5G(1,1)=calculateSARAssign3Q2(fc,maxPow,phoned1,skinCond,skinImp,skinDens,0,lowCond);
classSar5G(1,2)=calculateSARAssign3Q2(fc,maxPow,phoned1,fatCond,fatImp,fatDens,0,lowCond);
classSar5G(1,3)=calculateSARAssign3Q2(fc,maxPow,phoned1,boneCond,boneImp,boneDens,0,lowCond);
classSar5G(1,4)=calculateSARAssign3Q2(fc,maxPow,phoned1,brainCond,brainImp,brainDens,1,lowCond);

classSar5G(2,1)=calculateSARAssign3Q2(fc,maxPow,phoned2,skinCond,skinImp,skinDens,0,lowCond);
classSar5G(2,2)=calculateSARAssign3Q2(fc,maxPow,phoned2,fatCond,fatImp,fatDens,0,lowCond);
classSar5G(2,3)=calculateSARAssign3Q2(fc,maxPow,phoned2,boneCond,boneImp,boneDens,0,lowCond);
classSar5G(2,4)=calculateSARAssign3Q2(fc,maxPow,phoned2,brainCond,brainImp,brainDens,1,lowCond);