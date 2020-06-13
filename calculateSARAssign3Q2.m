function sar=calculateSARAssign3Q2(fc,maxPow,phoned,tissueCond,tissueImp,tissueDens,b,lowCond)
perm=4*pi*10^(-7);
Gt=1;
switch b
    case 0
        skinDepth=(1/(pi*fc*perm*lowCond))^(1/2);
        d=phoned + skinDepth;
        Pt=maxPow;
        powDen=(Pt*Gt)/(4*pi*d^2);
        Esq=powDen*tissueImp;
        sar=(tissueCond*Esq)/(2*tissueDens);
        
    case 1
        braind=8.1*10^(-2);
        skinDepth=(1/(pi*fc*perm*lowCond))^(1/2);
        atten=8.686*skinDepth/braind;
        Pt=10*log10((maxPow)/(1*10^(-3)));
        Pbrain=(10^((Pt-atten)/10))*10^(-3);
        powDen=(Pbrain*Gt)/(4*pi*braind^2);
        Esq=powDen*tissueImp;
        sar=(tissueCond*Esq)/(2*tissueDens);

    
        
end
    
end