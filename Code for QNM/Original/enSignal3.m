function [green,red,greentime] = enSignal3(phaseplan,phase,allred,m,n,t)
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

red=zeros(m,n,t);% define
green=100*ones(m,n,t);
%after the first cycle
for T=1:t
    for i=1:4
        for j=1:4
            if i==j
                red(12+i,12+j,T)=0;
                red(16+i,16+j,T)=0;
                red(20+i,20+j,T)=0;
                red(24+i,24+j,T)=0;
                red(28+i,28+j,T)=0;
                red(32+i,32+j,T)=0;
                red(36+i,36+j,T)=0;
                red(40+i,40+j,T)=0;
                red(44+i,44+j,T)=0;
                
                green(12+i,12+j,T)=0;
                green(16+i,16+j,T)=0;
                green(20+i,20+j,T)=0;
                green(24+i,24+j,T)=0;
                green(28+i,28+j,T)=0;
                green(32+i,32+j,T)=0;
                green(36+i,36+j,T)=0;
                green(40+i,40+j,T)=0;
                green(44+i,44+j,T)=0;
            else
                red(12+i,12+j,T)=initial1(phase(i,j),mod(T-1,cyclelength)+1);
                red(16+i,16+j,T)=initial2(phase(i,j),mod(T-1,cyclelength)+1);
                red(20+i,20+j,T)=initial3(phase(i,j),mod(T-1,cyclelength)+1);
                red(24+i,24+j,T)=initial4(phase(i,j),mod(T-1,cyclelength)+1);
                red(28+i,28+j,T)=initial5(phase(i,j),mod(T-1,cyclelength)+1);
                red(32+i,32+j,T)=initial6(phase(i,j),mod(T-1,cyclelength)+1);
                red(36+i,36+j,T)=initial7(phase(i,j),mod(T-1,cyclelength)+1);
                red(40+i,40+j,T)=initial8(phase(i,j),mod(T-1,cyclelength)+1);
                red(44+i,44+j,T)=initial9(phase(i,j),mod(T-1,cyclelength)+1);
                
                green(12+i,12+j,T)=initialg1(phase(i,j),mod(T-1,cyclelength)+1);
                green(16+i,16+j,T)=initialg2(phase(i,j),mod(T-1,cyclelength)+1);
                green(20+i,20+j,T)=initialg3(phase(i,j),mod(T-1,cyclelength)+1);
                green(24+i,24+j,T)=initialg4(phase(i,j),mod(T-1,cyclelength)+1);
                green(28+i,28+j,T)=initialg5(phase(i,j),mod(T-1,cyclelength)+1);
                green(32+i,32+j,T)=initialg6(phase(i,j),mod(T-1,cyclelength)+1);
                green(36+i,36+j,T)=initialg7(phase(i,j),mod(T-1,cyclelength)+1);
                green(40+i,40+j,T)=initialg8(phase(i,j),mod(T-1,cyclelength)+1);
                green(44+i,44+j,T)=initialg9(phase(i,j),mod(T-1,cyclelength)+1);
                
            end
        end
    end
end

greentime=100*ones(m,n);
for k=1:9
    phasegreen=zeros(4,4);
    for i=1:4
        for j=1:4
            if i~=j
                phasegreen(i,j)=phaseplan(k,phase(i,j))-allred;
            end
        end
    end
    greentime(4*k+9:4*k+12,4*k+9:4*k+12)=phasegreen;
end

end