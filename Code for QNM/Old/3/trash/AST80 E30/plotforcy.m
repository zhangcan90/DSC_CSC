y=zeros(6,18);
for phase=4:21
    for demand=1:6
        load(sprintf('outputwithphase%ddemand%d.mat',phase,demand),'ttt')
        y(demand,phase-3)=ttt;
    end
end
x=16:4:84;
for i=1:6
    plot(x,y(i,:));
    hold on
end