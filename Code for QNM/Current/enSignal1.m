function [green,red,greentime] = enSignal1(phaseplan,phase,allred,m,n,t)
% this function gives signal waiting time matix
% m,n is size of network; t is total steps; phaseplan is phase plan matrix;
% phase is the intesection geography related to phase
% offset is smaller than the cycle length nad bigger than
intersection1=phaseplan(1,:);
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


red=zeros(m,n,t);% define
green=100*ones(m,n,t);
%after the first cycle
for T=1:t
    for i=1:4
        for j=1:4
            if i==j
                red(4+i,4+j,T)=0;
                green(4+i,4+j,T)=0;
            else
                red(4+i,4+j,T)=initial1(phase(i,j),mod(T-1,cyclelength)+1);
                green(4+i,4+j,T)=initialg1(phase(i,j),mod(T-1,cyclelength)+1);
            end
        end
    end
end

phasegreen=zeros(4,4);
for i=1:4
    for j=1:4
        if i~=j
            phasegreen(i,j)=phaseplan(phase(i,j))-allred;
        end
    end
end
greentime=100*ones(m,n);
greentime(5:8,5:8)=phasegreen;

end
    
    
    
    




