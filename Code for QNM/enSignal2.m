function [green,red,greentime] = enSignal2(phaseplan,phase,allred,m,n,t)
% this function gives signal waiting time matix
% m,n is size of network; t is total steps; phaseplan is phase plan matrix;
% phase is the intesection geography related to phase
% offset is smaller than the cycle length nad bigger than
intersection1=phaseplan(1,:);
intersection2=phaseplan(2,:);
intersection3=phaseplan(3,:);
intersection4=phaseplan(4,:);
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


red=zeros(m,n,t);% define
green=100*ones(m,n,t);
%after the first cycle
for T=1:t
    for i=1:4
        for j=1:4
            if i==j
                red(8+i,8+j,T)=0;
                red(12+i,12+j,T)=0;
                red(16+i,16+j,T)=0;
                red(20+i,20+j,T)=0;
                green(8+i,8+j,T)=0;
                green(12+i,12+j,T)=0;
                green(16+i,16+j,T)=0;
                green(20+i,20+j,T)=0;
            else
                red(8+i,8+j,T)=initial1(phase(i,j),mod(T-1,cyclelength)+1);
                red(12+i,12+j,T)=initial2(phase(i,j),mod(T-1,cyclelength)+1);
                red(16+i,16+j,T)=initial3(phase(i,j),mod(T-1,cyclelength)+1);
                red(20+i,20+j,T)=initial4(phase(i,j),mod(T-1,cyclelength)+1);
                green(8+i,8+j,T)=initialg1(phase(i,j),mod(T-1,cyclelength)+1);
                green(12+i,12+j,T)=initialg2(phase(i,j),mod(T-1,cyclelength)+1);
                green(16+i,16+j,T)=initialg3(phase(i,j),mod(T-1,cyclelength)+1);
                green(20+i,20+j,T)=initialg4(phase(i,j),mod(T-1,cyclelength)+1);
            end
        end
    end
end


greentime=100*ones(m,n);
for k=1:4
    phasegreen=zeros(4,4);
    for i=1:4
        for j=1:4
            if i~=j
                phasegreen(i,j)=phaseplan(k,phase(i,j))-allred;
            end
        end
    end
    greentime(4*k+5:4*k+8,4*k+5:4*k+8)=phasegreen;
end

end