function signal = enSignal(phaseplan,phase,m,n,t)
% this function gives signal waiting time matix
% m,n is size of network; t is total steps; phaseplan is phase plan matrix;
% phase is the intesection geography related to phase
% offset is smaller than the cycle length nad bigger than
allred=3;
intersection1=phaseplan(1,:);
intersection2=phaseplan(2,:);
intersection3=phaseplan(3,:);
intersection4=phaseplan(4,:);
cyclelength=sum(phaseplan(1,1:4));
original1=[allred:-1:1 zeros(1,intersection1(1)-allred) cyclelength-intersection1(1)+allred:-1:allred+1;
    allred+intersection1(1):-1:1 zeros(1,intersection1(2)-allred) cyclelength-intersection1(2)+allred:-1:allred+intersection1(1)+1;
    allred+sum(intersection1(1:2)):-1:1 zeros(1,intersection1(3)-allred) cyclelength-intersection1(3)+allred:-1:allred+sum(intersection1(1:2))+1;
    allred+sum(intersection1(1:3)):-1:1 zeros(1,intersection1(4)-allred)];
original2=[allred:-1:1 zeros(1,intersection2(1)-allred) cyclelength-intersection2(1)+allred:-1:allred+1;
    allred+intersection2(1):-1:1 zeros(1,intersection2(2)-allred) cyclelength-intersection2(2)+allred:-1:allred+intersection2(1)+1;
    allred+sum(intersection2(1:2)):-1:1 zeros(1,intersection2(3)-allred) cyclelength-intersection2(3)+allred:-1:allred+sum(intersection2(1:2))+1;
    allred+sum(intersection2(1:3)):-1:1 zeros(1,intersection2(4)-allred)];
original3=[allred:-1:1 zeros(1,intersection3(1)-allred) cyclelength-intersection3(1)+allred:-1:allred+1;
    allred+intersection3(1):-1:1 zeros(1,intersection3(2)-allred) cyclelength-intersection3(2)+allred:-1:allred+intersection3(1)+1;
    allred+sum(intersection3(1:2)):-1:1 zeros(1,intersection3(3)-allred) cyclelength-intersection3(3)+allred:-1:allred+sum(intersection3(1:2))+1;
    allred+sum(intersection3(1:3)):-1:1 zeros(1,intersection3(4)-allred)];
original4=[allred:-1:1 zeros(1,intersection4(1)-allred) cyclelength-intersection4(1)+allred:-1:allred+1;
    allred+intersection4(1):-1:1 zeros(1,intersection4(2)-allred) cyclelength-intersection4(2)+allred:-1:allred+intersection4(1)+1;
    allred+sum(intersection4(1:2)):-1:1 zeros(1,intersection4(3)-allred) cyclelength-intersection4(3)+allred:-1:allred+sum(intersection4(1:2))+1;
    allred+sum(intersection4(1:3)):-1:1 zeros(1,intersection4(4)-allred)]; 
initial1=[original1(:,intersection1(5)+1:cyclelength) original1(:,1:intersection1(5))];
initial2=[original2(:,intersection2(5)+1:cyclelength) original2(:,1:intersection2(5))];
initial3=[original3(:,intersection3(5)+1:cyclelength) original3(:,1:intersection3(5))];
initial4=[original4(:,intersection4(5)+1:cyclelength) original4(:,1:intersection4(5))];

%make sure starting with allred (there is small problem to be fixed)
% for i=1:4
%     if initial1(i,allred)==0
%         initial1(i,1:allred)=allred:-1:1;
%     end
%     if initial2(i,allred)==0
%         initial2(i,1:allred)=allred:-1:1;
%     end
%     if initial3(i,allred)==0
%         initial3(i,1:allred)=allred:-1:1;
%     end
%     if initial4(i,allred)==0
%         initial4(i,1:allred)=allred:-1:1;
%     end
% end

%signal
signal=zeros(m,n,t);% define


%after the first cycle
for T=1:t
    for i=1:4
        for j=1:4
            if i==j
                signal(8+i,8+j,T)=0;
            else
                signal(8+i,8+j,T)=initial1(phase(i,j),mod(T-1,cyclelength)+1);
            end
        end
    end
end
for T=1:t
    for i=1:4
        for j=1:4
            if i==j
                signal(12+i,12+j,T)=0;
            else
                signal(12+i,12+j,T)=initial2(phase(i,j),mod(T-1,cyclelength)+1);
            end
        end
    end
end
for T=1:t
    for i=1:4
        for j=1:4
            if i==j
                signal(16+i,16+j,T)=0;
            else
                signal(16+i,16+j,T)=initial3(phase(i,j),mod(T-1,cyclelength)+1);
            end
        end
    end
end
for T=1:t
    for i=1:4
        for j=1:4
            if i==j
                signal(20+i,20+j,T)=0;
            else
                signal(20+i,20+j,T)=initial4(phase(i,j),mod(T-1,cyclelength)+1);
            end
        end
    end
end

end
    
    
    
    




