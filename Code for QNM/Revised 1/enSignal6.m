function [green,red,greentime] = enSignal6(phaseplan,phase,allred,m,n,t)
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
intersection17=phaseplan(17,:);
intersection18=phaseplan(18,:);
intersection19=phaseplan(19,:);
intersection20=phaseplan(20,:);
intersection21=phaseplan(21,:);
intersection22=phaseplan(22,:);
intersection23=phaseplan(23,:);
intersection24=phaseplan(24,:);
intersection25=phaseplan(25,:);
intersection26=phaseplan(26,:);
intersection27=phaseplan(27,:);
intersection28=phaseplan(28,:);
intersection29=phaseplan(29,:);
intersection30=phaseplan(30,:);
intersection31=phaseplan(31,:);
intersection32=phaseplan(32,:);
intersection33=phaseplan(33,:);
intersection34=phaseplan(34,:);
intersection35=phaseplan(35,:);
intersection36=phaseplan(36,:);

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

original17=[allred:-1:1 zeros(1,intersection17(1)-allred) cyclelength-intersection17(1)+allred:-1:allred+1;
    allred+intersection17(1):-1:1 zeros(1,intersection17(2)-allred) cyclelength-intersection17(2)+allred:-1:allred+intersection17(1)+1;
    allred+sum(intersection17(1:2)):-1:1 zeros(1,intersection17(3)-allred) cyclelength-intersection17(3)+allred:-1:allred+sum(intersection17(1:2))+1;
    allred+sum(intersection17(1:3)):-1:1 zeros(1,intersection17(4)-allred)];
originalg17=[zeros(1,allred) (intersection17(1)-allred):-1:1 zeros(1,(cyclelength-intersection17(1)));
    zeros(1,(intersection17(1)+allred)) (intersection17(2)-allred):-1:1 zeros(1,(cyclelength-intersection17(1)-intersection17(2)));
    zeros(1,(intersection17(1)+intersection17(2)+allred)) (intersection17(3)-allred):-1:1 zeros(1,intersection17(4));
    zeros(1,cyclelength-intersection17(4)+allred) (intersection17(4)-allred):-1:1];
initial17=[original17(:,intersection17(5)+1:cyclelength) original17(:,1:intersection17(5))];
initialg17=[originalg17(:,intersection17(5)+1:cyclelength) originalg17(:,1:intersection17(5))];

original18=[allred:-1:1 zeros(1,intersection18(1)-allred) cyclelength-intersection18(1)+allred:-1:allred+1;
    allred+intersection18(1):-1:1 zeros(1,intersection18(2)-allred) cyclelength-intersection18(2)+allred:-1:allred+intersection18(1)+1;
    allred+sum(intersection18(1:2)):-1:1 zeros(1,intersection18(3)-allred) cyclelength-intersection18(3)+allred:-1:allred+sum(intersection18(1:2))+1;
    allred+sum(intersection18(1:3)):-1:1 zeros(1,intersection18(4)-allred)];
originalg18=[zeros(1,allred) (intersection18(1)-allred):-1:1 zeros(1,(cyclelength-intersection18(1)));
    zeros(1,(intersection18(1)+allred)) (intersection18(2)-allred):-1:1 zeros(1,(cyclelength-intersection18(1)-intersection18(2)));
    zeros(1,(intersection18(1)+intersection18(2)+allred)) (intersection18(3)-allred):-1:1 zeros(1,intersection18(4));
    zeros(1,cyclelength-intersection18(4)+allred) (intersection18(4)-allred):-1:1];
initial18=[original18(:,intersection18(5)+1:cyclelength) original18(:,1:intersection18(5))];
initialg18=[originalg18(:,intersection18(5)+1:cyclelength) originalg18(:,1:intersection18(5))];

original19=[allred:-1:1 zeros(1,intersection19(1)-allred) cyclelength-intersection19(1)+allred:-1:allred+1;
    allred+intersection19(1):-1:1 zeros(1,intersection19(2)-allred) cyclelength-intersection19(2)+allred:-1:allred+intersection19(1)+1;
    allred+sum(intersection19(1:2)):-1:1 zeros(1,intersection19(3)-allred) cyclelength-intersection19(3)+allred:-1:allred+sum(intersection19(1:2))+1;
    allred+sum(intersection19(1:3)):-1:1 zeros(1,intersection19(4)-allred)];
originalg19=[zeros(1,allred) (intersection19(1)-allred):-1:1 zeros(1,(cyclelength-intersection19(1)));
    zeros(1,(intersection19(1)+allred)) (intersection19(2)-allred):-1:1 zeros(1,(cyclelength-intersection19(1)-intersection19(2)));
    zeros(1,(intersection19(1)+intersection19(2)+allred)) (intersection19(3)-allred):-1:1 zeros(1,intersection19(4));
    zeros(1,cyclelength-intersection19(4)+allred) (intersection19(4)-allred):-1:1];
initial19=[original19(:,intersection19(5)+1:cyclelength) original19(:,1:intersection19(5))];
initialg19=[originalg19(:,intersection19(5)+1:cyclelength) originalg19(:,1:intersection19(5))];

original20=[allred:-1:1 zeros(1,intersection20(1)-allred) cyclelength-intersection20(1)+allred:-1:allred+1;
    allred+intersection20(1):-1:1 zeros(1,intersection20(2)-allred) cyclelength-intersection20(2)+allred:-1:allred+intersection20(1)+1;
    allred+sum(intersection20(1:2)):-1:1 zeros(1,intersection20(3)-allred) cyclelength-intersection20(3)+allred:-1:allred+sum(intersection20(1:2))+1;
    allred+sum(intersection20(1:3)):-1:1 zeros(1,intersection20(4)-allred)];
originalg20=[zeros(1,allred) (intersection20(1)-allred):-1:1 zeros(1,(cyclelength-intersection20(1)));
    zeros(1,(intersection20(1)+allred)) (intersection20(2)-allred):-1:1 zeros(1,(cyclelength-intersection20(1)-intersection20(2)));
    zeros(1,(intersection20(1)+intersection20(2)+allred)) (intersection20(3)-allred):-1:1 zeros(1,intersection20(4));
    zeros(1,cyclelength-intersection20(4)+allred) (intersection20(4)-allred):-1:1];
initial20=[original20(:,intersection20(5)+1:cyclelength) original20(:,1:intersection20(5))];
initialg20=[originalg20(:,intersection20(5)+1:cyclelength) originalg20(:,1:intersection20(5))];

original21=[allred:-1:1 zeros(1,intersection21(1)-allred) cyclelength-intersection21(1)+allred:-1:allred+1;
    allred+intersection21(1):-1:1 zeros(1,intersection21(2)-allred) cyclelength-intersection21(2)+allred:-1:allred+intersection21(1)+1;
    allred+sum(intersection21(1:2)):-1:1 zeros(1,intersection21(3)-allred) cyclelength-intersection21(3)+allred:-1:allred+sum(intersection21(1:2))+1;
    allred+sum(intersection21(1:3)):-1:1 zeros(1,intersection21(4)-allred)];
originalg21=[zeros(1,allred) (intersection21(1)-allred):-1:1 zeros(1,(cyclelength-intersection21(1)));
    zeros(1,(intersection21(1)+allred)) (intersection21(2)-allred):-1:1 zeros(1,(cyclelength-intersection21(1)-intersection21(2)));
    zeros(1,(intersection21(1)+intersection21(2)+allred)) (intersection21(3)-allred):-1:1 zeros(1,intersection21(4));
    zeros(1,cyclelength-intersection21(4)+allred) (intersection21(4)-allred):-1:1];
initial21=[original21(:,intersection21(5)+1:cyclelength) original21(:,1:intersection21(5))];
initialg21=[originalg21(:,intersection21(5)+1:cyclelength) originalg21(:,1:intersection21(5))];

original22=[allred:-1:1 zeros(1,intersection22(1)-allred) cyclelength-intersection22(1)+allred:-1:allred+1;
    allred+intersection22(1):-1:1 zeros(1,intersection22(2)-allred) cyclelength-intersection22(2)+allred:-1:allred+intersection22(1)+1;
    allred+sum(intersection22(1:2)):-1:1 zeros(1,intersection22(3)-allred) cyclelength-intersection22(3)+allred:-1:allred+sum(intersection22(1:2))+1;
    allred+sum(intersection22(1:3)):-1:1 zeros(1,intersection22(4)-allred)];
originalg22=[zeros(1,allred) (intersection22(1)-allred):-1:1 zeros(1,(cyclelength-intersection22(1)));
    zeros(1,(intersection22(1)+allred)) (intersection22(2)-allred):-1:1 zeros(1,(cyclelength-intersection22(1)-intersection22(2)));
    zeros(1,(intersection22(1)+intersection22(2)+allred)) (intersection22(3)-allred):-1:1 zeros(1,intersection22(4));
    zeros(1,cyclelength-intersection22(4)+allred) (intersection22(4)-allred):-1:1];
initial22=[original22(:,intersection22(5)+1:cyclelength) original22(:,1:intersection22(5))];
initialg22=[originalg22(:,intersection22(5)+1:cyclelength) originalg22(:,1:intersection22(5))];

original23=[allred:-1:1 zeros(1,intersection23(1)-allred) cyclelength-intersection23(1)+allred:-1:allred+1;
    allred+intersection23(1):-1:1 zeros(1,intersection23(2)-allred) cyclelength-intersection23(2)+allred:-1:allred+intersection23(1)+1;
    allred+sum(intersection23(1:2)):-1:1 zeros(1,intersection23(3)-allred) cyclelength-intersection23(3)+allred:-1:allred+sum(intersection23(1:2))+1;
    allred+sum(intersection23(1:3)):-1:1 zeros(1,intersection23(4)-allred)];
originalg23=[zeros(1,allred) (intersection23(1)-allred):-1:1 zeros(1,(cyclelength-intersection23(1)));
    zeros(1,(intersection23(1)+allred)) (intersection23(2)-allred):-1:1 zeros(1,(cyclelength-intersection23(1)-intersection23(2)));
    zeros(1,(intersection23(1)+intersection23(2)+allred)) (intersection23(3)-allred):-1:1 zeros(1,intersection23(4));
    zeros(1,cyclelength-intersection23(4)+allred) (intersection23(4)-allred):-1:1];
initial23=[original23(:,intersection23(5)+1:cyclelength) original23(:,1:intersection23(5))];
initialg23=[originalg23(:,intersection23(5)+1:cyclelength) originalg23(:,1:intersection23(5))];

original24=[allred:-1:1 zeros(1,intersection24(1)-allred) cyclelength-intersection24(1)+allred:-1:allred+1;
    allred+intersection24(1):-1:1 zeros(1,intersection24(2)-allred) cyclelength-intersection24(2)+allred:-1:allred+intersection24(1)+1;
    allred+sum(intersection24(1:2)):-1:1 zeros(1,intersection24(3)-allred) cyclelength-intersection24(3)+allred:-1:allred+sum(intersection24(1:2))+1;
    allred+sum(intersection24(1:3)):-1:1 zeros(1,intersection24(4)-allred)];
originalg24=[zeros(1,allred) (intersection24(1)-allred):-1:1 zeros(1,(cyclelength-intersection24(1)));
    zeros(1,(intersection24(1)+allred)) (intersection24(2)-allred):-1:1 zeros(1,(cyclelength-intersection24(1)-intersection24(2)));
    zeros(1,(intersection24(1)+intersection24(2)+allred)) (intersection24(3)-allred):-1:1 zeros(1,intersection24(4));
    zeros(1,cyclelength-intersection24(4)+allred) (intersection24(4)-allred):-1:1];
initial24=[original24(:,intersection24(5)+1:cyclelength) original24(:,1:intersection24(5))];
initialg24=[originalg24(:,intersection24(5)+1:cyclelength) originalg24(:,1:intersection24(5))];

original25=[allred:-1:1 zeros(1,intersection25(1)-allred) cyclelength-intersection25(1)+allred:-1:allred+1;
    allred+intersection25(1):-1:1 zeros(1,intersection25(2)-allred) cyclelength-intersection25(2)+allred:-1:allred+intersection25(1)+1;
    allred+sum(intersection25(1:2)):-1:1 zeros(1,intersection25(3)-allred) cyclelength-intersection25(3)+allred:-1:allred+sum(intersection25(1:2))+1;
    allred+sum(intersection25(1:3)):-1:1 zeros(1,intersection25(4)-allred)];
originalg25=[zeros(1,allred) (intersection25(1)-allred):-1:1 zeros(1,(cyclelength-intersection25(1)));
    zeros(1,(intersection25(1)+allred)) (intersection25(2)-allred):-1:1 zeros(1,(cyclelength-intersection25(1)-intersection25(2)));
    zeros(1,(intersection25(1)+intersection25(2)+allred)) (intersection25(3)-allred):-1:1 zeros(1,intersection25(4));
    zeros(1,cyclelength-intersection25(4)+allred) (intersection25(4)-allred):-1:1];
initial25=[original25(:,intersection25(5)+1:cyclelength) original25(:,1:intersection25(5))];
initialg25=[originalg25(:,intersection25(5)+1:cyclelength) originalg25(:,1:intersection25(5))];

original26=[allred:-1:1 zeros(1,intersection26(1)-allred) cyclelength-intersection26(1)+allred:-1:allred+1;
    allred+intersection26(1):-1:1 zeros(1,intersection26(2)-allred) cyclelength-intersection26(2)+allred:-1:allred+intersection26(1)+1;
    allred+sum(intersection26(1:2)):-1:1 zeros(1,intersection26(3)-allred) cyclelength-intersection26(3)+allred:-1:allred+sum(intersection26(1:2))+1;
    allred+sum(intersection26(1:3)):-1:1 zeros(1,intersection26(4)-allred)];
originalg26=[zeros(1,allred) (intersection26(1)-allred):-1:1 zeros(1,(cyclelength-intersection26(1)));
    zeros(1,(intersection26(1)+allred)) (intersection26(2)-allred):-1:1 zeros(1,(cyclelength-intersection26(1)-intersection26(2)));
    zeros(1,(intersection26(1)+intersection26(2)+allred)) (intersection26(3)-allred):-1:1 zeros(1,intersection26(4));
    zeros(1,cyclelength-intersection26(4)+allred) (intersection26(4)-allred):-1:1];
initial26=[original26(:,intersection26(5)+1:cyclelength) original26(:,1:intersection26(5))];
initialg26=[originalg26(:,intersection26(5)+1:cyclelength) originalg26(:,1:intersection26(5))];

original27=[allred:-1:1 zeros(1,intersection27(1)-allred) cyclelength-intersection27(1)+allred:-1:allred+1;
    allred+intersection27(1):-1:1 zeros(1,intersection27(2)-allred) cyclelength-intersection27(2)+allred:-1:allred+intersection27(1)+1;
    allred+sum(intersection27(1:2)):-1:1 zeros(1,intersection27(3)-allred) cyclelength-intersection27(3)+allred:-1:allred+sum(intersection27(1:2))+1;
    allred+sum(intersection27(1:3)):-1:1 zeros(1,intersection27(4)-allred)];
originalg27=[zeros(1,allred) (intersection27(1)-allred):-1:1 zeros(1,(cyclelength-intersection27(1)));
    zeros(1,(intersection27(1)+allred)) (intersection27(2)-allred):-1:1 zeros(1,(cyclelength-intersection27(1)-intersection27(2)));
    zeros(1,(intersection27(1)+intersection27(2)+allred)) (intersection27(3)-allred):-1:1 zeros(1,intersection27(4));
    zeros(1,cyclelength-intersection27(4)+allred) (intersection27(4)-allred):-1:1];
initial27=[original27(:,intersection27(5)+1:cyclelength) original27(:,1:intersection27(5))];
initialg27=[originalg27(:,intersection27(5)+1:cyclelength) originalg27(:,1:intersection27(5))];

original28=[allred:-1:1 zeros(1,intersection28(1)-allred) cyclelength-intersection28(1)+allred:-1:allred+1;
    allred+intersection28(1):-1:1 zeros(1,intersection28(2)-allred) cyclelength-intersection28(2)+allred:-1:allred+intersection28(1)+1;
    allred+sum(intersection28(1:2)):-1:1 zeros(1,intersection28(3)-allred) cyclelength-intersection28(3)+allred:-1:allred+sum(intersection28(1:2))+1;
    allred+sum(intersection28(1:3)):-1:1 zeros(1,intersection28(4)-allred)];
originalg28=[zeros(1,allred) (intersection28(1)-allred):-1:1 zeros(1,(cyclelength-intersection28(1)));
    zeros(1,(intersection28(1)+allred)) (intersection28(2)-allred):-1:1 zeros(1,(cyclelength-intersection28(1)-intersection28(2)));
    zeros(1,(intersection28(1)+intersection28(2)+allred)) (intersection28(3)-allred):-1:1 zeros(1,intersection28(4));
    zeros(1,cyclelength-intersection28(4)+allred) (intersection28(4)-allred):-1:1];
initial28=[original28(:,intersection28(5)+1:cyclelength) original28(:,1:intersection28(5))];
initialg28=[originalg28(:,intersection28(5)+1:cyclelength) originalg28(:,1:intersection28(5))];

original29=[allred:-1:1 zeros(1,intersection29(1)-allred) cyclelength-intersection29(1)+allred:-1:allred+1;
    allred+intersection29(1):-1:1 zeros(1,intersection29(2)-allred) cyclelength-intersection29(2)+allred:-1:allred+intersection29(1)+1;
    allred+sum(intersection29(1:2)):-1:1 zeros(1,intersection29(3)-allred) cyclelength-intersection29(3)+allred:-1:allred+sum(intersection29(1:2))+1;
    allred+sum(intersection29(1:3)):-1:1 zeros(1,intersection29(4)-allred)];
originalg29=[zeros(1,allred) (intersection29(1)-allred):-1:1 zeros(1,(cyclelength-intersection29(1)));
    zeros(1,(intersection29(1)+allred)) (intersection29(2)-allred):-1:1 zeros(1,(cyclelength-intersection29(1)-intersection29(2)));
    zeros(1,(intersection29(1)+intersection29(2)+allred)) (intersection29(3)-allred):-1:1 zeros(1,intersection29(4));
    zeros(1,cyclelength-intersection29(4)+allred) (intersection29(4)-allred):-1:1];
initial29=[original29(:,intersection29(5)+1:cyclelength) original29(:,1:intersection29(5))];
initialg29=[originalg29(:,intersection29(5)+1:cyclelength) originalg29(:,1:intersection29(5))];

original30=[allred:-1:1 zeros(1,intersection30(1)-allred) cyclelength-intersection30(1)+allred:-1:allred+1;
    allred+intersection30(1):-1:1 zeros(1,intersection30(2)-allred) cyclelength-intersection30(2)+allred:-1:allred+intersection30(1)+1;
    allred+sum(intersection30(1:2)):-1:1 zeros(1,intersection30(3)-allred) cyclelength-intersection30(3)+allred:-1:allred+sum(intersection30(1:2))+1;
    allred+sum(intersection30(1:3)):-1:1 zeros(1,intersection30(4)-allred)];
originalg30=[zeros(1,allred) (intersection30(1)-allred):-1:1 zeros(1,(cyclelength-intersection30(1)));
    zeros(1,(intersection30(1)+allred)) (intersection30(2)-allred):-1:1 zeros(1,(cyclelength-intersection30(1)-intersection30(2)));
    zeros(1,(intersection30(1)+intersection30(2)+allred)) (intersection30(3)-allred):-1:1 zeros(1,intersection30(4));
    zeros(1,cyclelength-intersection30(4)+allred) (intersection30(4)-allred):-1:1];
initial30=[original30(:,intersection30(5)+1:cyclelength) original30(:,1:intersection30(5))];
initialg30=[originalg30(:,intersection30(5)+1:cyclelength) originalg30(:,1:intersection30(5))];

original31=[allred:-1:1 zeros(1,intersection31(1)-allred) cyclelength-intersection31(1)+allred:-1:allred+1;
    allred+intersection31(1):-1:1 zeros(1,intersection31(2)-allred) cyclelength-intersection31(2)+allred:-1:allred+intersection31(1)+1;
    allred+sum(intersection31(1:2)):-1:1 zeros(1,intersection31(3)-allred) cyclelength-intersection31(3)+allred:-1:allred+sum(intersection31(1:2))+1;
    allred+sum(intersection31(1:3)):-1:1 zeros(1,intersection31(4)-allred)];
originalg31=[zeros(1,allred) (intersection31(1)-allred):-1:1 zeros(1,(cyclelength-intersection31(1)));
    zeros(1,(intersection31(1)+allred)) (intersection31(2)-allred):-1:1 zeros(1,(cyclelength-intersection31(1)-intersection31(2)));
    zeros(1,(intersection31(1)+intersection31(2)+allred)) (intersection31(3)-allred):-1:1 zeros(1,intersection31(4));
    zeros(1,cyclelength-intersection31(4)+allred) (intersection31(4)-allred):-1:1];
initial31=[original31(:,intersection31(5)+1:cyclelength) original31(:,1:intersection31(5))];
initialg31=[originalg31(:,intersection31(5)+1:cyclelength) originalg31(:,1:intersection31(5))];

original32=[allred:-1:1 zeros(1,intersection32(1)-allred) cyclelength-intersection32(1)+allred:-1:allred+1;
    allred+intersection32(1):-1:1 zeros(1,intersection32(2)-allred) cyclelength-intersection32(2)+allred:-1:allred+intersection32(1)+1;
    allred+sum(intersection32(1:2)):-1:1 zeros(1,intersection32(3)-allred) cyclelength-intersection32(3)+allred:-1:allred+sum(intersection32(1:2))+1;
    allred+sum(intersection32(1:3)):-1:1 zeros(1,intersection32(4)-allred)];
originalg32=[zeros(1,allred) (intersection32(1)-allred):-1:1 zeros(1,(cyclelength-intersection32(1)));
    zeros(1,(intersection32(1)+allred)) (intersection32(2)-allred):-1:1 zeros(1,(cyclelength-intersection32(1)-intersection32(2)));
    zeros(1,(intersection32(1)+intersection32(2)+allred)) (intersection32(3)-allred):-1:1 zeros(1,intersection32(4));
    zeros(1,cyclelength-intersection32(4)+allred) (intersection32(4)-allred):-1:1];
initial32=[original32(:,intersection32(5)+1:cyclelength) original32(:,1:intersection32(5))];
initialg32=[originalg32(:,intersection32(5)+1:cyclelength) originalg32(:,1:intersection32(5))];

original33=[allred:-1:1 zeros(1,intersection33(1)-allred) cyclelength-intersection33(1)+allred:-1:allred+1;
    allred+intersection33(1):-1:1 zeros(1,intersection33(2)-allred) cyclelength-intersection33(2)+allred:-1:allred+intersection33(1)+1;
    allred+sum(intersection33(1:2)):-1:1 zeros(1,intersection33(3)-allred) cyclelength-intersection33(3)+allred:-1:allred+sum(intersection33(1:2))+1;
    allred+sum(intersection33(1:3)):-1:1 zeros(1,intersection33(4)-allred)];
originalg33=[zeros(1,allred) (intersection33(1)-allred):-1:1 zeros(1,(cyclelength-intersection33(1)));
    zeros(1,(intersection33(1)+allred)) (intersection33(2)-allred):-1:1 zeros(1,(cyclelength-intersection33(1)-intersection33(2)));
    zeros(1,(intersection33(1)+intersection33(2)+allred)) (intersection33(3)-allred):-1:1 zeros(1,intersection33(4));
    zeros(1,cyclelength-intersection33(4)+allred) (intersection33(4)-allred):-1:1];
initial33=[original33(:,intersection33(5)+1:cyclelength) original33(:,1:intersection33(5))];
initialg33=[originalg33(:,intersection33(5)+1:cyclelength) originalg33(:,1:intersection33(5))];

original34=[allred:-1:1 zeros(1,intersection34(1)-allred) cyclelength-intersection34(1)+allred:-1:allred+1;
    allred+intersection34(1):-1:1 zeros(1,intersection34(2)-allred) cyclelength-intersection34(2)+allred:-1:allred+intersection34(1)+1;
    allred+sum(intersection34(1:2)):-1:1 zeros(1,intersection34(3)-allred) cyclelength-intersection34(3)+allred:-1:allred+sum(intersection34(1:2))+1;
    allred+sum(intersection34(1:3)):-1:1 zeros(1,intersection34(4)-allred)];
originalg34=[zeros(1,allred) (intersection34(1)-allred):-1:1 zeros(1,(cyclelength-intersection34(1)));
    zeros(1,(intersection34(1)+allred)) (intersection34(2)-allred):-1:1 zeros(1,(cyclelength-intersection34(1)-intersection34(2)));
    zeros(1,(intersection34(1)+intersection34(2)+allred)) (intersection34(3)-allred):-1:1 zeros(1,intersection34(4));
    zeros(1,cyclelength-intersection34(4)+allred) (intersection34(4)-allred):-1:1];
initial34=[original34(:,intersection34(5)+1:cyclelength) original34(:,1:intersection34(5))];
initialg34=[originalg34(:,intersection34(5)+1:cyclelength) originalg34(:,1:intersection34(5))];

original35=[allred:-1:1 zeros(1,intersection35(1)-allred) cyclelength-intersection35(1)+allred:-1:allred+1;
    allred+intersection35(1):-1:1 zeros(1,intersection35(2)-allred) cyclelength-intersection35(2)+allred:-1:allred+intersection35(1)+1;
    allred+sum(intersection35(1:2)):-1:1 zeros(1,intersection35(3)-allred) cyclelength-intersection35(3)+allred:-1:allred+sum(intersection35(1:2))+1;
    allred+sum(intersection35(1:3)):-1:1 zeros(1,intersection35(4)-allred)];
originalg35=[zeros(1,allred) (intersection35(1)-allred):-1:1 zeros(1,(cyclelength-intersection35(1)));
    zeros(1,(intersection35(1)+allred)) (intersection35(2)-allred):-1:1 zeros(1,(cyclelength-intersection35(1)-intersection35(2)));
    zeros(1,(intersection35(1)+intersection35(2)+allred)) (intersection35(3)-allred):-1:1 zeros(1,intersection35(4));
    zeros(1,cyclelength-intersection35(4)+allred) (intersection35(4)-allred):-1:1];
initial35=[original35(:,intersection35(5)+1:cyclelength) original35(:,1:intersection35(5))];
initialg35=[originalg35(:,intersection35(5)+1:cyclelength) originalg35(:,1:intersection35(5))];

original36=[allred:-1:1 zeros(1,intersection36(1)-allred) cyclelength-intersection36(1)+allred:-1:allred+1;
    allred+intersection36(1):-1:1 zeros(1,intersection36(2)-allred) cyclelength-intersection36(2)+allred:-1:allred+intersection36(1)+1;
    allred+sum(intersection36(1:2)):-1:1 zeros(1,intersection36(3)-allred) cyclelength-intersection36(3)+allred:-1:allred+sum(intersection36(1:2))+1;
    allred+sum(intersection36(1:3)):-1:1 zeros(1,intersection36(4)-allred)];
originalg36=[zeros(1,allred) (intersection36(1)-allred):-1:1 zeros(1,(cyclelength-intersection36(1)));
    zeros(1,(intersection36(1)+allred)) (intersection36(2)-allred):-1:1 zeros(1,(cyclelength-intersection36(1)-intersection36(2)));
    zeros(1,(intersection36(1)+intersection36(2)+allred)) (intersection36(3)-allred):-1:1 zeros(1,intersection36(4));
    zeros(1,cyclelength-intersection36(4)+allred) (intersection36(4)-allred):-1:1];
initial36=[original36(:,intersection36(5)+1:cyclelength) original36(:,1:intersection36(5))];
initialg36=[originalg36(:,intersection36(5)+1:cyclelength) originalg36(:,1:intersection36(5))];

red=zeros(m,n,t);% define
green=100*ones(m,n,t);
%after the first cycle
for T=1:t
    for i=1:4
        for j=1:4
            if i==j
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
                red(80+i,80+j,T)=0;
                red(84+i,84+j,T)=0;
                red(88+i,88+j,T)=0;
                red(92+i,92+j,T)=0;
                red(96+i,96+j,T)=0;
                red(100+i,100+j,T)=0;
                red(104+i,104+j,T)=0;
                red(108+i,108+j,T)=0;
                red(112+i,112+j,T)=0;
                red(116+i,116+j,T)=0;
                red(120+i,120+j,T)=0;
                red(124+i,124+j,T)=0;
                red(128+i,128+j,T)=0;
                red(132+i,132+j,T)=0;
                red(136+i,136+j,T)=0;
                red(140+i,140+j,T)=0;
                red(144+i,144+j,T)=0;
                red(148+i,148+j,T)=0;
                red(152+i,152+j,T)=0;
                red(156+i,156+j,T)=0;
                red(160+i,160+j,T)=0;
                red(164+i,164+j,T)=0;
                
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
                green(80+i,80+j,T)=0;
                green(84+i,84+j,T)=0;
                green(88+i,88+j,T)=0;
                green(92+i,92+j,T)=0;
                green(96+i,96+j,T)=0;
                green(100+i,100+j,T)=0;
                green(104+i,104+j,T)=0;
                green(108+i,108+j,T)=0;
                green(112+i,112+j,T)=0;
                green(116+i,116+j,T)=0;
                green(120+i,120+j,T)=0;
                green(124+i,124+j,T)=0;
                green(128+i,128+j,T)=0;
                green(132+i,132+j,T)=0;
                green(136+i,136+j,T)=0;
                green(140+i,140+j,T)=0;
                green(144+i,144+j,T)=0;
                green(148+i,148+j,T)=0;
                green(152+i,152+j,T)=0;
                green(156+i,156+j,T)=0;
                green(160+i,160+j,T)=0;
                green(164+i,164+j,T)=0;
            else
                red(24+i,24+j,T)=initial1(phase(i,j),mod(T-1,cyclelength)+1);
                red(28+i,28+j,T)=initial2(phase(i,j),mod(T-1,cyclelength)+1);
                red(32+i,32+j,T)=initial3(phase(i,j),mod(T-1,cyclelength)+1);
                red(36+i,36+j,T)=initial4(phase(i,j),mod(T-1,cyclelength)+1);
                red(40+i,40+j,T)=initial5(phase(i,j),mod(T-1,cyclelength)+1);
                red(44+i,44+j,T)=initial6(phase(i,j),mod(T-1,cyclelength)+1);
                red(48+i,48+j,T)=initial7(phase(i,j),mod(T-1,cyclelength)+1);
                red(52+i,52+j,T)=initial8(phase(i,j),mod(T-1,cyclelength)+1);
                red(56+i,56+j,T)=initial9(phase(i,j),mod(T-1,cyclelength)+1);
                red(60+i,60+j,T)=initial10(phase(i,j),mod(T-1,cyclelength)+1);
                red(64+i,64+j,T)=initial11(phase(i,j),mod(T-1,cyclelength)+1);
                red(68+i,68+j,T)=initial12(phase(i,j),mod(T-1,cyclelength)+1);
                red(72+i,72+j,T)=initial13(phase(i,j),mod(T-1,cyclelength)+1);
                red(76+i,76+j,T)=initial14(phase(i,j),mod(T-1,cyclelength)+1);
                red(80+i,80+j,T)=initial15(phase(i,j),mod(T-1,cyclelength)+1);
                red(84+i,84+j,T)=initial16(phase(i,j),mod(T-1,cyclelength)+1);
                red(88+i,88+j,T)=initial17(phase(i,j),mod(T-1,cyclelength)+1);
                red(92+i,92+j,T)=initial18(phase(i,j),mod(T-1,cyclelength)+1);
                red(96+i,96+j,T)=initial19(phase(i,j),mod(T-1,cyclelength)+1);
                red(100+i,100+j,T)=initial20(phase(i,j),mod(T-1,cyclelength)+1);
                red(104+i,104+j,T)=initial21(phase(i,j),mod(T-1,cyclelength)+1);
                red(108+i,108+j,T)=initial22(phase(i,j),mod(T-1,cyclelength)+1);
                red(112+i,112+j,T)=initial23(phase(i,j),mod(T-1,cyclelength)+1);
                red(116+i,116+j,T)=initial24(phase(i,j),mod(T-1,cyclelength)+1);
                red(120+i,120+j,T)=initial25(phase(i,j),mod(T-1,cyclelength)+1);
                red(124+i,124+j,T)=initial26(phase(i,j),mod(T-1,cyclelength)+1);
                red(128+i,128+j,T)=initial27(phase(i,j),mod(T-1,cyclelength)+1);
                red(132+i,132+j,T)=initial28(phase(i,j),mod(T-1,cyclelength)+1);
                red(136+i,136+j,T)=initial29(phase(i,j),mod(T-1,cyclelength)+1);
                red(140+i,140+j,T)=initial30(phase(i,j),mod(T-1,cyclelength)+1);
                red(144+i,144+j,T)=initial31(phase(i,j),mod(T-1,cyclelength)+1);
                red(148+i,148+j,T)=initial32(phase(i,j),mod(T-1,cyclelength)+1);
                red(152+i,152+j,T)=initial33(phase(i,j),mod(T-1,cyclelength)+1);
                red(156+i,156+j,T)=initial34(phase(i,j),mod(T-1,cyclelength)+1);
                red(160+i,160+j,T)=initial35(phase(i,j),mod(T-1,cyclelength)+1);
                red(164+i,164+j,T)=initial36(phase(i,j),mod(T-1,cyclelength)+1);
                
                green(24+i,24+j,T)=initialg1(phase(i,j),mod(T-1,cyclelength)+1);
                green(28+i,28+j,T)=initialg2(phase(i,j),mod(T-1,cyclelength)+1);
                green(32+i,32+j,T)=initialg3(phase(i,j),mod(T-1,cyclelength)+1);
                green(36+i,36+j,T)=initialg4(phase(i,j),mod(T-1,cyclelength)+1);
                green(40+i,40+j,T)=initialg5(phase(i,j),mod(T-1,cyclelength)+1);
                green(44+i,44+j,T)=initialg6(phase(i,j),mod(T-1,cyclelength)+1);
                green(48+i,48+j,T)=initialg7(phase(i,j),mod(T-1,cyclelength)+1);
                green(52+i,52+j,T)=initialg8(phase(i,j),mod(T-1,cyclelength)+1);
                green(56+i,56+j,T)=initialg9(phase(i,j),mod(T-1,cyclelength)+1);
                green(60+i,60+j,T)=initialg10(phase(i,j),mod(T-1,cyclelength)+1);
                green(64+i,64+j,T)=initialg11(phase(i,j),mod(T-1,cyclelength)+1);
                green(68+i,68+j,T)=initialg12(phase(i,j),mod(T-1,cyclelength)+1);
                green(72+i,72+j,T)=initialg13(phase(i,j),mod(T-1,cyclelength)+1);
                green(76+i,76+j,T)=initialg14(phase(i,j),mod(T-1,cyclelength)+1);
                green(80+i,80+j,T)=initialg15(phase(i,j),mod(T-1,cyclelength)+1);
                green(84+i,84+j,T)=initialg16(phase(i,j),mod(T-1,cyclelength)+1);
                green(88+i,88+j,T)=initialg17(phase(i,j),mod(T-1,cyclelength)+1);
                green(92+i,92+j,T)=initialg18(phase(i,j),mod(T-1,cyclelength)+1);
                green(96+i,96+j,T)=initialg19(phase(i,j),mod(T-1,cyclelength)+1);
                green(100+i,100+j,T)=initialg20(phase(i,j),mod(T-1,cyclelength)+1);
                green(104+i,104+j,T)=initialg21(phase(i,j),mod(T-1,cyclelength)+1);
                green(108+i,108+j,T)=initialg22(phase(i,j),mod(T-1,cyclelength)+1);
                green(112+i,112+j,T)=initialg23(phase(i,j),mod(T-1,cyclelength)+1);
                green(116+i,116+j,T)=initialg24(phase(i,j),mod(T-1,cyclelength)+1);
                green(120+i,120+j,T)=initialg25(phase(i,j),mod(T-1,cyclelength)+1);
                green(124+i,124+j,T)=initialg26(phase(i,j),mod(T-1,cyclelength)+1);
                green(128+i,128+j,T)=initialg27(phase(i,j),mod(T-1,cyclelength)+1);
                green(132+i,132+j,T)=initialg28(phase(i,j),mod(T-1,cyclelength)+1);
                green(136+i,136+j,T)=initialg29(phase(i,j),mod(T-1,cyclelength)+1);
                green(140+i,140+j,T)=initialg30(phase(i,j),mod(T-1,cyclelength)+1);
                green(144+i,144+j,T)=initialg31(phase(i,j),mod(T-1,cyclelength)+1);
                green(148+i,148+j,T)=initialg32(phase(i,j),mod(T-1,cyclelength)+1);
                green(152+i,152+j,T)=initialg33(phase(i,j),mod(T-1,cyclelength)+1);
                green(156+i,156+j,T)=initialg34(phase(i,j),mod(T-1,cyclelength)+1);
                green(160+i,160+j,T)=initialg35(phase(i,j),mod(T-1,cyclelength)+1);
                green(164+i,164+j,T)=initialg36(phase(i,j),mod(T-1,cyclelength)+1);
                
            end
        end
    end
end

greentime=100*ones(m,n);
for k=1:36
    phasegreen=zeros(4,4);
    for i=1:4
        for j=1:4
            if i~=j
                phasegreen(i,j)=phaseplan(k,phase(i,j))-allred;
            end
        end
    end
    greentime(4*k+21:4*k+24,4*k+21:4*k+24)=phasegreen;
end

end