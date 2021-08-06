function TC= travelcost(LF,T,C,geo)
% calculate travel cost matrix without waiting time for signal control
% follow BPR function
% LF is link flow matrix; T is fft; C is capacity
[m,n]=size(geo);
TC=T;
for i=1:m
    for j=1:n
        if geo(i,j)==1
            TC(i,j)=T(i,j)*(1+0.15*(LF(i,j)/C(i,j))^4);
        end
    end
end
TC=round(TC);
end

