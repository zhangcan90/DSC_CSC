function opphase = opphase3(demand,samplephase)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[~,~,n]=size(samplephase);
avgtttall=zeros(1,n);
parfor i=1:n
    [~,avgtttnew,~] = run3(demand,[samplephase(:,:,i) zeros(9,1)]);
    avgtttall(i)=avgtttnew;
end
[~,location]=min(avgtttall);
opphase=samplephase(:,:,location);
end