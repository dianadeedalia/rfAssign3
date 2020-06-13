function sar = calculateSarAssign3Q1(maxPow,d,tissueCond,tissueDens,tissueRads)
fc=103.9*10^6;
lowCond=0.069;
perm= 4*pi*10^(-7);
Gt=1;

%step 1
E=(7.746*(maxPow)^(1/2))/d; % simplified version of the formula given
%step 2
skinDepth=(1/(pi*fc*perm*lowCond))^(1/2);
Ex=E*exp((-1*tissueRads)/skinDepth);
%step 3
sar=(tissueCond*(Ex^2))/(2*tissueDens);
end

