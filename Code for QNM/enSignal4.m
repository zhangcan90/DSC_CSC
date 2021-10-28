function [green,red,greentime] = enSignal4(phaseplan,phase,allred,m,n,t)
% this function gives signal waiting time matix
% m,n is size of network; t is total steps; phaseplan is phase plan matrix;
% phase is the intesection geography related to phase
% offset is smaller than the cycle length nad bigger than
intersection1=phaseplan(1,:);
intersection2=phaseplan(2,:);
intersection3=phaseplan(3,:);
intersection4=phaseplan(4,:);
intersection5=phaseplan(5,:);
intersection6=phaseplan(6,:);
intersection7=phaseplan(7,:);
intersection8=phaseplan(8,:);
intersection9=phaseplan(9,:);
intersection10=phaseplan(10,:);
intersection11=phaseplan(11,:);
intersection12=phaseplan(12,:);
intersection13=phaseplan(13,:);
intersection14=phaseplan(14,:);
intersection15=phaseplan(15,:);
intersection16=phaseplan(16,:);

cyclelength=sum(phaseplan(1,1:4));

original1=[allred:-1:1 zeros(1,intersection1(1)-allred) cyclelength-intersection1(1)+allred:-1:allred+1;
    allred+intersection1(1):-1:1 zeros(1,intersection1(2)-allred) cyclelength-intersection1(2)+allred:-1:allred+intersection1(1)+1;
    allred+sum(intersection1(1:2)):-1:1 zeros(1,intersection1(3)-allred) cyclelength-intersection1(3)+allred:-1:allred+sum(intersection1(1:2))+1;
    allred+sum(intersection1(1:3)):-1:1 zeros(1,intersection1(4)-allred)];
originalg1=[zeros(1,allred) (intersection1(1)-allred):-1:1 zeros(1,(cyclelength-intersection1(1)));
    zeros(1,(intersection1(1)+allred)) (intersection1(2)-allred):-1:1 zeros(1,(cyclelength-intersection1(1)-intersection1(2)));
    zeros(1,(intersection1(1)+intersection1(2)+allred)) (intersection1(3)-allred):-1:1 zeros(1,intersection1(4));
    zeros(1,cyclelength-intersection1(4)+allred) (intersection1(4)-allred):-1:1];
initial1=[original1(:,intersection1(5)+1:cyclelength) original1(:,1:intersection1(5))];
initialg1=[originalg1(:,intersection1(5)+1:cyclelength) originalg1(:,1:intersection1(5))];

original2=[allred:-1:1 zeros(1,intersection2(1)-allred) cyclelength-intersection2(1)+allred:-1:allred+1;
    allred+intersection2(1):-1:1 zeros(1,intersection2(2)-allred) cyclelength-intersection2(2)+allred:-1:allred+intersection2(1)+1;
    allred+sum(intersection2(1:2)):-1:1 zeros(1,intersection2(3)-allred) cyclelength-intersection2(3)+allred:-1:allred+sum(intersection2(1:2))+1;
    allred+sum(intersection2(1:3)):-1:1 zeros(1,intersection2(4)-allred)];
originalg2=[zeros(1,allred) (intersection2(1)-allred):-1:1 zeros(1,(cyclelength-intersection2(1)));
    zeros(1,(intersection2(1)+allred)) (intersection2(2)-allred):-1:1 zeros(1,(cyclelength-intersection2(1)-intersection2(2)));
    zeros(1,(intersection2(1)+intersection2(2)+allred)) (intersection2(3)-allred):-1:1 zeros(1,intersection2(4));
    zeros(1,cyclelength-intersection2(4)+allred) (intersection2(4)-allred):-1:1];
initial2=[original2(:,intersection2(5)+1:cyclelength) original2(:,1:intersection2(5))];
initialg2=[originalg2(:,intersection2(5)+1:cyclelength) originalg2(:,1:intersection2(5))];

original3=[allred:-1:1 zeros(1,intersection3(1)-allred) cyclelength-intersection3(1)+allred:-1:allred+1;
    allred+intersection3(1):-1:1 zeros(1,intersection3(2)-allred) cyclelength-intersection3(2)+allred:-1:allred+intersection3(1)+1;
    allred+sum(intersection3(1:2)):-1:1 zeros(1,intersection3(3)-allred) cyclelength-intersection3(3)+allred:-1:allred+sum(intersection3(1:2))+1;
    allred+sum(intersection3(1:3)):-1:1 zeros(1,intersection3(4)-allred)];
originalg3=[zeros(1,allred) (intersection3(1)-allred):-1:1 zeros(1,(cyclelength-intersection3(1)));
    zeros(1,(intersection3(1)+allred)) (intersection3(2)-allred):-1:1 zeros(1,(cyclelength-intersection3(1)-intersection3(2)));
    zeros(1,(intersection3(1)+intersection3(2)+allred)) (intersection3(3)-allred):-1:1 zeros(1,intersection3(4));
    zeros(1,cyclelength-intersection3(4)+allred) (intersection3(4)-allred):-1:1];
initial3=[original3(:,intersection3(5)+1:cyclelength) original3(:,1:intersection3(5))];
initialg3=[originalg3(:,intersection3(5)+1:cyclelength) originalg3(:,1:intersection3(5))];

original4=[allred:-1:1 zeros(1,intersection4(1)-allred) cyclelength-intersection4(1)+allred:-1:allred+1;
    allred+intersection4(1):-1:1 zeros(1,intersection4(2)-allred) cyclelength-intersection4(2)+allred:-1:allred+intersection4(1)+1;
    allred+sum(intersection4(1:2)):-1:1 zeros(1,intersection4(3)-allred) cyclelength-intersection4(3)+allred:-1:allred+sum(intersection4(1:2))+1;
    allred+sum(intersection4(1:3)):-1:1 zeros(1,intersection4(4)-allred)];
originalg4=[zeros(1,allred) (intersection4(1)-allred):-1:1 zeros(1,(cyclelength-intersection4(1)));
    zeros(1,(intersection4(1)+allred)) (intersection4(2)-allred):-1:1 zeros(1,(cyclelength-intersection4(1)-intersection4(2)));
    zeros(1,(intersection4(1)+intersection4(2)+allred)) (intersection4(3)-allred):-1:1 zeros(1,intersection4(4));
    zeros(1,cyclelength-intersection4(4)+allred) (intersection4(4)-allred):-1:1];
initial4=[original4(:,intersection4(5)+1:cyclelength) original4(:,1:intersection4(5))];
initialg4=[originalg4(:,intersection4(5)+1:cyclelength) originalg4(:,1:intersection4(5))];

original5=[allred:-1:1 zeros(1,intersection5(1)-allred) cyclelength-intersection5(1)+allred:-1:allred+1;
    allred+intersection5(1):-1:1 zeros(1,intersection5(2)-allred) cyclelength-intersection5(2)+allred:-1:allred+intersection5(1)+1;
    allred+sum(intersection5(1:2)):-1:1 zeros(1,intersection5(3)-allred) cyclelength-intersection5(3)+allred:-1:allred+sum(intersection5(1:2))+1;
    allred+sum(intersection5(1:3)):-1:1 zeros(1,intersection5(4)-allred)];
originalg5=[zeros(1,allred) (intersection5(1)-allred):-1:1 zeros(1,(cyclelength-intersection5(1)));
    zeros(1,(intersection5(1)+allred)) (intersection5(2)-allred):-1:1 zeros(1,(cyclelength-intersection5(1)-intersection5(2)));
    zeros(1,(intersection5(1)+intersection5(2)+allred)) (intersection5(3)-allred):-1:1 zeros(1,intersection5(4));
    zeros(1,cyclelength-intersection5(4)+allred) (intersection5(4)-allred):-1:1];
initial5=[original5(:,intersection5(5)+1:cyclelength) original5(:,1:intersection5(5))];
initialg5=[originalg5(:,intersection5(5)+1:cyclelength) originalg5(:,1:intersection5(5))];

original6=[allred:-1:1 zeros(1,intersection6(1)-allred) cyclelength-intersection6(1)+allred:-1:allred+1;
    allred+intersection6(1):-1:1 zeros(1,intersection6(2)-allred) cyclelength-intersection6(2)+allred:-1:allred+intersection6(1)+1;
    allred+sum(intersection6(1:2)):-1:1 zeros(1,intersection6(3)-allred) cyclelength-intersection6(3)+allred:-1:allred+sum(intersection6(1:2))+1;
    allred+sum(intersection6(1:3)):-1:1 zeros(1,intersection6(4)-allred)];
originalg6=[zeros(1,allred) (intersection6(1)-allred):-1:1 zeros(1,(cyclelength-intersection6(1)));
    zeros(1,(intersection6(1)+allred)) (intersection6(2)-allred):-1:1 zeros(1,(cyclelength-intersection6(1)-intersection6(2)));
    zeros(1,(intersection6(1)+intersection6(2)+allred)) (intersection6(3)-allred):-1:1 zeros(1,intersection6(4));
    zeros(1,cyclelength-intersection6(4)+allred) (intersection6(4)-allred):-1:1];
initial6=[original6(:,intersection6(5)+1:cyclelength) original6(:,1:intersection6(5))];
initialg6=[originalg6(:,intersection6(5)+1:cyclelength) originalg6(:,1:intersection6(5))];

original7=[allred:-1:1 zeros(1,intersection7(1)-allred) cyclelength-intersection7(1)+allred:-1:allred+1;
    allred+intersection7(1):-1:1 zeros(1,intersection7(2)-allred) cyclelength-intersection7(2)+allred:-1:allred+intersection7(1)+1;
    allred+sum(intersection7(1:2)):-1:1 zeros(1,intersection7(3)-allred) cyclelength-intersection7(3)+allred:-1:allred+sum(intersection7(1:2))+1;
    allred+sum(intersection7(1:3)):-1:1 zeros(1,intersection7(4)-allred)];
originalg7=[zeros(1,allred) (intersection7(1)-allred):-1:1 zeros(1,(cyclelength-intersection7(1)));
    zeros(1,(intersection7(1)+allred)) (intersection7(2)-allred):-1:1 zeros(1,(cyclelength-intersection7(1)-intersection7(2)));
    zeros(1,(intersection7(1)+intersection7(2)+allred)) (intersection7(3)-allred):-1:1 zeros(1,intersection7(4));
    zeros(1,cyclelength-intersection7(4)+allred) (intersection7(4)-allred):-1:1];
initial7=[original7(:,intersection7(5)+1:cyclelength) original7(:,1:intersection7(5))];
initialg7=[originalg7(:,intersection7(5)+1:cyclelength) originalg7(:,1:intersection7(5))];

original8=[allred:-1:1 zeros(1,intersection8(1)-allred) cyclelength-intersection8(1)+allred:-1:allred+1;
    allred+intersection8(1):-1:1 zeros(1,intersection8(2)-allred) cyclelength-intersection8(2)+allred:-1:allred+intersection8(1)+1;
    allred+sum(intersection8(1:2)):-1:1 zeros(1,intersection8(3)-allred) cyclelength-intersection8(3)+allred:-1:allred+sum(intersection8(1:2))+1;
    allred+sum(intersection8(1:3)):-1:1 zeros(1,intersection8(4)-allred)];
originalg8=[zeros(1,allred) (intersection8(1)-allred):-1:1 zeros(1,(cyclelength-intersection8(1)));
    zeros(1,(intersection8(1)+allred)) (intersection8(2)-allred):-1:1 zeros(1,(cyclelength-intersection8(1)-intersection8(2)));
    zeros(1,(intersection8(1)+intersection8(2)+allred)) (intersection8(3)-allred):-1:1 zeros(1,intersection8(4));
    zeros(1,cyclelength-intersection8(4)+allred) (intersection8(4)-allred):-1:1];
initial8=[original8(:,intersection8(5)+1:cyclelength) original8(:,1:intersection8(5))];
initialg8=[originalg8(:,intersection8(5)+1:cyclelength) originalg8(:,1:intersection8(5))];

original9=[allred:-1:1 zeros(1,intersection9(1)-allred) cyclelength-intersection9(1)+allred:-1:allred+1;
    allred+intersection9(1):-1:1 zeros(1,intersection9(2)-allred) cyclelength-intersection9(2)+allred:-1:allred+intersection9(1)+1;
    allred+sum(intersection9(1:2)):-1:1 zeros(1,intersection9(3)-allred) cyclelength-intersection9(3)+allred:-1:allred+sum(intersection9(1:2))+1;
    allred+sum(intersection9(1:3)):-1:1 zeros(1,intersection9(4)-allred)];
originalg9=[zeros(1,allred) (intersection9(1)-allred):-1:1 zeros(1,(cyclelength-intersection9(1)));
    zeros(1,(intersection9(1)+allred)) (intersection9(2)-allred):-1:1 zeros(1,(cyclelength-intersection9(1)-intersection9(2)));
    zeros(1,(intersection9(1)+intersection9(2)+allred)) (intersection9(3)-allred):-1:1 zeros(1,intersection9(4));
    zeros(1,cyclelength-intersection9(4)+allred) (intersection9(4)-allred):-1:1];
initial9=[original9(:,intersection9(5)+1:cyclelength) original9(:,1:intersection9(5))];
initialg9=[originalg9(:,intersection9(5)+1:cyclelength) originalg9(:,1:intersection9(5))];

original10=[allred:-1:1 zeros(1,intersection10(1)-allred) cyclelength-intersection10(1)+allred:-1:allred+1;
    allred+intersection10(1):-1:1 zeros(1,intersection10(2)-allred) cyclelength-intersection10(2)+allred:-1:allred+intersection10(1)+1;
    allred+sum(intersection10(1:2)):-1:1 zeros(1,intersection10(3)-allred) cyclelength-intersection10(3)+allred:-1:allred+sum(intersection10(1:2))+1;
    allred+sum(intersection10(1:3)):-1:1 zeros(1,intersection10(4)-allred)];
originalg10=[zeros(1,allred) (intersection10(1)-allred):-1:1 zeros(1,(cyclelength-intersection10(1)));
    zeros(1,(intersection10(1)+allred)) (intersection10(2)-allred):-1:1 zeros(1,(cyclelength-intersection10(1)-intersection10(2)));
    zeros(1,(intersection10(1)+intersection10(2)+allred)) (intersection10(3)-allred):-1:1 zeros(1,intersection10(4));
    zeros(1,cyclelength-intersection10(4)+allred) (intersection10(4)-allred):-1:1];
initial10=[original10(:,intersection10(5)+1:cyclelength) original10(:,1:intersection10(5))];
initialg10=[originalg10(:,intersection10(5)+1:cyclelength) originalg10(:,1:intersection10(5))];

original11=[allred:-1:1 zeros(1,intersection11(1)-allred) cyclelength-intersection11(1)+allred:-1:allred+1;
    allred+intersection11(1):-1:1 zeros(1,intersection11(2)-allred) cyclelength-intersection11(2)+allred:-1:allred+intersection11(1)+1;
    allred+sum(intersection11(1:2)):-1:1 zeros(1,intersection11(3)-allred) cyclelength-intersection11(3)+allred:-1:allred+sum(intersection11(1:2))+1;
    allred+sum(intersection11(1:3)):-1:1 zeros(1,intersection11(4)-allred)];
originalg11=[zeros(1,allred) (intersection11(1)-allred):-1:1 zeros(1,(cyclelength-intersection11(1)));
    zeros(1,(intersection11(1)+allred)) (intersection11(2)-allred):-1:1 zeros(1,(cyclelength-intersection11(1)-intersection11(2)));
    zeros(1,(intersection11(1)+intersection11(2)+allred)) (intersection11(3)-allred):-1:1 zeros(1,intersection11(4));
    zeros(1,cyclelength-intersection11(4)+allred) (intersection11(4)-allred):-1:1];
initial11=[original11(:,intersection11(5)+1:cyclelength) original11(:,1:intersection11(5))];
initialg11=[originalg11(:,intersection11(5)+1:cyclelength) originalg11(:,1:intersection11(5))];

original12=[allred:-1:1 zeros(1,intersection12(1)-allred) cyclelength-intersection12(1)+allred:-1:allred+1;
    allred+intersection12(1):-1:1 zeros(1,intersection12(2)-allred) cyclelength-intersection12(2)+allred:-1:allred+intersection12(1)+1;
    allred+sum(intersection12(1:2)):-1:1 zeros(1,intersection12(3)-allred) cyclelength-intersection12(3)+allred:-1:allred+sum(intersection12(1:2))+1;
    allred+sum(intersection12(1:3)):-1:1 zeros(1,intersection12(4)-allred)];
originalg12=[zeros(1,allred) (intersection12(1)-allred):-1:1 zeros(1,(cyclelength-intersection12(1)));
    zeros(1,(intersection12(1)+allred)) (intersection12(2)-allred):-1:1 zeros(1,(cyclelength-intersection12(1)-intersection12(2)));
    zeros(1,(intersection12(1)+intersection12(2)+allred)) (intersection12(3)-allred):-1:1 zeros(1,intersection12(4));
    zeros(1,cyclelength-intersection12(4)+allred) (intersection12(4)-allred):-1:1];
initial12=[original12(:,intersection12(5)+1:cyclelength) original12(:,1:intersection12(5))];
initialg12=[originalg12(:,intersection12(5)+1:cyclelength) originalg12(:,1:intersection12(5))];

original13=[allred:-1:1 zeros(1,intersection13(1)-allred) cyclelength-intersection13(1)+allred:-1:allred+1;
    allred+intersection13(1):-1:1 zeros(1,intersection13(2)-allred) cyclelength-intersection13(2)+allred:-1:allred+intersection13(1)+1;
    allred+sum(intersection13(1:2)):-1:1 zeros(1,intersection13(3)-allred) cyclelength-intersection13(3)+allred:-1:allred+sum(intersection13(1:2))+1;
    allred+sum(intersection13(1:3)):-1:1 zeros(1,intersection13(4)-allred)];
originalg13=[zeros(1,allred) (intersection13(1)-allred):-1:1 zeros(1,(cyclelength-intersection13(1)));
    zeros(1,(intersection13(1)+allred)) (intersection13(2)-allred):-1:1 zeros(1,(cyclelength-intersection13(1)-intersection13(2)));
    zeros(1,(intersection13(1)+intersection13(2)+allred)) (intersection13(3)-allred):-1:1 zeros(1,intersection13(4));
    zeros(1,cyclelength-intersection13(4)+allred) (intersection13(4)-allred):-1:1];
initial13=[original13(:,intersection13(5)+1:cyclelength) original13(:,1:intersection13(5))];
initialg13=[originalg13(:,intersection13(5)+1:cyclelength) originalg13(:,1:intersection13(5))];

original14=[allred:-1:1 zeros(1,intersection14(1)-allred) cyclelength-intersection14(1)+allred:-1:allred+1;
    allred+intersection14(1):-1:1 zeros(1,intersection14(2)-allred) cyclelength-intersection14(2)+allred:-1:allred+intersection14(1)+1;
    allred+sum(intersection14(1:2)):-1:1 zeros(1,intersection14(3)-allred) cyclelength-intersection14(3)+allred:-1:allred+sum(intersection14(1:2))+1;
    allred+sum(intersection14(1:3)):-1:1 zeros(1,intersection14(4)-allred)];
originalg14=[zeros(1,allred) (intersection14(1)-allred):-1:1 zeros(1,(cyclelength-intersection14(1)));
    zeros(1,(intersection14(1)+allred)) (intersection14(2)-allred):-1:1 zeros(1,(cyclelength-intersection14(1)-intersection14(2)));
    zeros(1,(intersection14(1)+intersection14(2)+allred)) (intersection14(3)-allred):-1:1 zeros(1,intersection14(4));
    zeros(1,cyclelength-intersection14(4)+allred) (intersection14(4)-allred):-1:1];
initial14=[original14(:,intersection14(5)+1:cyclelength) original14(:,1:intersection14(5))];
initialg14=[originalg14(:,intersection14(5)+1:cyclelength) originalg14(:,1:intersection14(5))];

original15=[allred:-1:1 zeros(1,intersection15(1)-allred) cyclelength-intersection15(1)+allred:-1:allred+1;
    allred+intersection15(1):-1:1 zeros(1,intersection15(2)-allred) cyclelength-intersection15(2)+allred:-1:allred+intersection15(1)+1;
    allred+sum(intersection15(1:2)):-1:1 zeros(1,intersection15(3)-allred) cyclelength-intersection15(3)+allred:-1:allred+sum(intersection15(1:2))+1;
    allred+sum(intersection15(1:3)):-1:1 zeros(1,intersection15(4)-allred)];
originalg15=[zeros(1,allred) (intersection15(1)-allred):-1:1 zeros(1,(cyclelength-intersection15(1)));
    zeros(1,(intersection15(1)+allred)) (intersection15(2)-allred):-1:1 zeros(1,(cyclelength-intersection15(1)-intersection15(2)));
    zeros(1,(intersection15(1)+intersection15(2)+allred)) (intersection15(3)-allred):-1:1 zeros(1,intersection15(4));
    zeros(1,cyclelength-intersection15(4)+allred) (intersection15(4)-allred):-1:1];
initial15=[original15(:,intersection15(5)+1:cyclelength) original15(:,1:intersection15(5))];
initialg15=[originalg15(:,intersection15(5)+1:cyclelength) originalg15(:,1:intersection15(5))];

original16=[allred:-1:1 zeros(1,intersection16(1)-allred) cyclelength-intersection16(1)+allred:-1:allred+1;
    allred+intersection16(1):-1:1 zeros(1,intersection16(2)-allred) cyclelength-intersection16(2)+allred:-1:allred+intersection16(1)+1;
    allred+sum(intersection16(1:2)):-1:1 zeros(1,intersection16(3)-allred) cyclelength-intersection16(3)+allred:-1:allred+sum(intersection16(1:2))+1;
    allred+sum(intersection16(1:3)):-1:1 zeros(1,intersection16(4)-allred)];
originalg16=[zeros(1,allred) (intersection16(1)-allred):-1:1 zeros(1,(cyclelength-intersection16(1)));
    zeros(1,(intersection16(1)+allred)) (intersection16(2)-allred):-1:1 zeros(1,(cyclelength-intersection16(1)-intersection16(2)));
    zeros(1,(intersection16(1)+intersection16(2)+allred)) (intersection16(3)-allred):-1:1 zeros(1,intersection16(4));
    zeros(1,cyclelength-intersection16(4)+allred) (intersection16(4)-allred):-1:1];
initial16=[original16(:,intersection16(5)+1:cyclelength) original16(:,1:intersection16(5))];
initialg16=[originalg16(:,intersection16(5)+1:cyclelength) originalg16(:,1:intersection16(5))];

red=zeros(m,n,t);% define
green=100*ones(m,n,t);
%after the first cycle
for T=1:t
    for i=1:4
        for j=1:4
            if i==j
                red(16+i,16+j,T)=0;
                red(20+i,20+j,T)=0;
                red(24+i,24+j,T)=0;
                red(28+i,28+j,T)=0;
                red(32+i,32+j,T)=0;
                red(36+i,36+j,T)=0;
                red(40+i,40+j,T)=0;
                red(44+i,44+j,T)=0;
                red(48+i,48+j,T)=0;
                red(52+i,52+j,T)=0;
                red(56+i,56+j,T)=0;
                red(60+i,60+j,T)=0;
                red(64+i,64+j,T)=0;
                red(68+i,68+j,T)=0;
                red(72+i,72+j,T)=0;
                red(76+i,76+j,T)=0;
                
                green(16+i,16+j,T)=0;
                green(20+i,20+j,T)=0;
                green(24+i,24+j,T)=0;
                green(28+i,28+j,T)=0;
                green(32+i,32+j,T)=0;
                green(36+i,36+j,T)=0;
                green(40+i,40+j,T)=0;
                green(44+i,44+j,T)=0;
                green(48+i,48+j,T)=0;
                green(52+i,52+j,T)=0;
                green(56+i,56+j,T)=0;
                green(60+i,60+j,T)=0;
                green(64+i,64+j,T)=0;
                green(68+i,68+j,T)=0;
                green(72+i,72+j,T)=0;
                green(76+i,76+j,T)=0;
            else
                red(16+i,16+j,T)=initial1(phase(i,j),mod(T-1,cyclelength)+1);
                red(20+i,20+j,T)=initial2(phase(i,j),mod(T-1,cyclelength)+1);
                red(24+i,24+j,T)=initial3(phase(i,j),mod(T-1,cyclelength)+1);
                red(28+i,38+j,T)=initial4(phase(i,j),mod(T-1,cyclelength)+1);
                red(32+i,32+j,T)=initial5(phase(i,j),mod(T-1,cyclelength)+1);
                red(36+i,36+j,T)=initial6(phase(i,j),mod(T-1,cyclelength)+1);
                red(40+i,40+j,T)=initial7(phase(i,j),mod(T-1,cyclelength)+1);
                red(44+i,44+j,T)=initial8(phase(i,j),mod(T-1,cyclelength)+1);
                red(48+i,48+j,T)=initial9(phase(i,j),mod(T-1,cyclelength)+1);
                red(52+i,52+j,T)=initial10(phase(i,j),mod(T-1,cyclelength)+1);
                red(56+i,56+j,T)=initial11(phase(i,j),mod(T-1,cyclelength)+1);
                red(60+i,60+j,T)=initial12(phase(i,j),mod(T-1,cyclelength)+1);
                red(64+i,64+j,T)=initial13(phase(i,j),mod(T-1,cyclelength)+1);
                red(68+i,68+j,T)=initial14(phase(i,j),mod(T-1,cyclelength)+1);
                red(72+i,72+j,T)=initial15(phase(i,j),mod(T-1,cyclelength)+1);
                red(76+i,76+j,T)=initial16(phase(i,j),mod(T-1,cyclelength)+1);

                
                green(16+i,16+j,T)=initialg1(phase(i,j),mod(T-1,cyclelength)+1);
                green(20+i,20+j,T)=initialg2(phase(i,j),mod(T-1,cyclelength)+1);
                green(24+i,24+j,T)=initialg3(phase(i,j),mod(T-1,cyclelength)+1);
                green(28+i,28+j,T)=initialg4(phase(i,j),mod(T-1,cyclelength)+1);
                green(32+i,32+j,T)=initialg5(phase(i,j),mod(T-1,cyclelength)+1);
                green(36+i,36+j,T)=initialg6(phase(i,j),mod(T-1,cyclelength)+1);
                green(40+i,40+j,T)=initialg7(phase(i,j),mod(T-1,cyclelength)+1);
                green(44+i,44+j,T)=initialg8(phase(i,j),mod(T-1,cyclelength)+1);
                green(48+i,48+j,T)=initialg9(phase(i,j),mod(T-1,cyclelength)+1);
                green(52+i,52+j,T)=initialg10(phase(i,j),mod(T-1,cyclelength)+1);
                green(56+i,56+j,T)=initialg11(phase(i,j),mod(T-1,cyclelength)+1);
                green(60+i,60+j,T)=initialg12(phase(i,j),mod(T-1,cyclelength)+1);
                green(64+i,64+j,T)=initialg13(phase(i,j),mod(T-1,cyclelength)+1);
                green(68+i,68+j,T)=initialg14(phase(i,j),mod(T-1,cyclelength)+1);
                green(72+i,72+j,T)=initialg15(phase(i,j),mod(T-1,cyclelength)+1);
                green(76+i,76+j,T)=initialg16(phase(i,j),mod(T-1,cyclelength)+1);
                
            end
        end
    end
end

greentime=100*ones(m,n);
for k=1:16
    phasegreen=zeros(4,4);
    for i=1:4
        for j=1:4
            if i~=j
                phasegreen(i,j)=phaseplan(k,phase(i,j))-allred;
            end
        end
    end
    greentime(4*k+13:4*k+16,4*k+13:4*k+16)=phasegreen;
end

end