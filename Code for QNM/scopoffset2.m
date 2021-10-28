function opoffset = scopoffset2(demand,opp,sampleoffset)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
[n,~]=size(sampleoffset);
avgtttall=zeros(1,n);
parfor i=1:n
    [~,avgtttnew,~,~] = scrun2(demand,[opp sampleoffset(i,:)']);
    avgtttall(i)=avgtttnew;
end
[~,location]=min(avgtttall);
opoffset=sampleoffset(location,:);
end