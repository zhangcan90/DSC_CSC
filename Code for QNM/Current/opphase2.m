function opphase = opphase2(demand,samplephase)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[~,~,n]=size(samplephase);
avgtttall=zeros(1,n);
parfor i=1:n
    [~,avgtttnew,~] = run2(demand,[samplephase(:,:,i) zeros(4,1)]);
    avgtttall(i)=avgtttnew;
end
[~,location]=min(avgtttall);
opphase=samplephase(:,:,location);
end