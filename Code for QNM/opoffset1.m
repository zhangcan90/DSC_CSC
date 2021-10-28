function opoffset = opoffset1(demand,opp1,sampleoffset)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
n=length(sampleoffset);
avgtttall=zeros(1,n);
parfor i=1:n
    [~,avgtttnew,~] = run1(demand,[opp1 sampleoffset(i)]);
    avgtttall(i)=avgtttnew;  
end
[~,location]=min(avgtttall);
opoffset=sampleoffset(location);
end


