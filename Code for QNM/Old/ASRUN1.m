START=clock;%running time start
t=80; % time index
ttt=zeros(1,625);

kk=[8 8 8 8; 20 4 4 4;4 20 4 4;4 4 20 4;4 4 4 20];
%    4 4 12 12;4 12 4 12;4 12 12 4;12 4 4 12;12 4 12 4;12 12 4 4];
all=zeros(4,4,625);
tk=1;
for i=1:5
    for j=1:5
        for k=1:5
            for l=1:5
                all(:,:,tk)=[kk(i,:);kk(j,:);kk(k,:);kk(l,:)];
                tk=tk+1;
            end
        end
    end
end

%geography info
%    1   2  3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22  23  24 
geo=[0 inf inf inf inf inf inf inf 1 inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf;
    inf 0 inf inf inf inf inf inf inf inf inf inf 1 inf inf inf inf inf inf inf inf inf inf inf; 
    inf inf 0 inf inf inf inf inf inf inf inf inf inf 1 inf inf inf inf inf inf inf inf inf inf;
    inf inf inf 0 inf inf inf inf inf inf inf inf inf inf inf inf inf 1 inf inf inf inf inf inf;
    inf inf inf inf 0 inf inf inf inf inf inf inf inf inf inf inf inf inf 1 inf inf inf inf inf;
    inf inf inf inf inf 0 inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf 1 inf;
    inf inf inf inf inf inf 0 inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf 1;
    inf inf inf inf inf inf inf 0 inf inf inf 1 inf inf inf inf inf inf inf inf inf inf inf inf;
    1 inf inf inf inf inf inf inf 0 inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf;
    inf inf inf inf inf inf inf inf inf 0 inf inf inf inf inf 1 inf inf inf inf inf inf inf inf;
    inf inf inf inf inf inf inf inf inf inf 0 inf inf inf inf inf inf inf inf inf 1 inf inf inf;
    inf inf inf inf inf inf inf 1 inf inf inf 0 inf inf inf inf inf inf inf inf inf inf inf inf;
    inf 1 inf inf inf inf inf inf inf inf inf inf 0 inf inf inf inf inf inf inf inf inf inf inf;
    inf inf 1 inf inf inf inf inf inf inf inf inf inf  0 inf inf inf inf inf inf inf inf inf inf;
    inf inf inf inf inf inf inf inf inf inf inf inf inf inf 0 inf 1 inf inf inf inf inf inf inf;
    inf inf inf inf inf inf inf inf inf 1 inf inf inf inf inf 0 inf inf inf inf inf inf inf inf;
    inf inf inf inf inf inf inf inf inf inf inf inf inf inf 1 inf 0 inf inf inf inf inf inf inf;
    inf inf inf 1 inf inf inf inf inf inf inf inf inf inf inf inf inf 0 inf inf inf inf inf inf;
    inf inf inf inf 1 inf inf inf inf inf inf inf inf inf inf inf inf inf 0 inf inf inf inf inf;
    inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf 0 inf 1 inf inf;
    inf inf inf inf inf inf inf inf inf inf 1 inf inf inf inf inf inf inf inf inf 0 inf inf inf;
    inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf 1 inf 0 inf inf;
    inf inf inf inf inf 1 inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf 0 inf;
    inf inf inf inf inf inf 1 inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf 0];

%free flow travel time for link i j
turn=[0 3 1 1;1 0 3 1;1 1 0 3;3 1 1 0];
fft=10.*geo;
fft(9:12,9:12)=turn;
fft(13:16,13:16)=turn;
fft(17:20,17:20)=turn;
fft(21:24,21:24)=turn;
%value can be changed

% phase number
phase=[0 1 2 2; 4 0 3 4; 2 2 0 1;3 4 4 0];

% size of the network
[m,n]=size(geo);

% exit rate
exit=30;%can be changed

% clear time
dt=2000;

%error
error=randn([m,n,t+dt]);
h=8;

%demand
demand=3;
parfor ii = 1:625 % different cyclelength
    %define parameters
    in=zeros(m,n,t+dt); %inflow rate
    out=zeros(m,n,t+dt); %outflow rate
    tc=zeros(m,n,t+dt); %travel cost matrix
    od=zeros(m,n,t+dt); %OD matrix
    outside=zeros(m,n,t+dt);

    %intersection signal [phase 1; phase 2; phase 3 ;phase 4; offset]
    phaseplan=[all(:,:,ii) zeros(4,1)];  %can be changed, remain the same cycle length, and offset from 0 to 59
    signal=enSignal(phaseplan,phase,m,n,t+dt);
    %for i=1:8 % 8 origin and destination
        for j=2:8
            for mm=1:t
                %if i~=j
                    od(1,j,mm)=demand;%can be any value or stochastic
                %end
            end
        end
    %end

    %system clock
    T=1;

    %initial travel cost
    for i=1:t+dt
    tc(:,:,i)=fft+signal(:,:,i);
    end
    tc=round(tc);
    
    rtc=tc+error./(100.*tc);%distributed travel time
    
     % network dynamics
    while T<t+dt-100 % can be changed
        for i=1:m
            for j=1:n
                if od(i,j,T)>0
                    dd=od(i,j,T);
                    p=findPath(rtc(:,:,T),i,j,0);
                    p=sortrows(p,m+1);
                    [a,b]=size(p);
                    if a>1
                        in(i,p(1,2),T)=in(i,p(1,2),T)+od(i,j,T);
                        out(p(1,2),p(1,3),T+tc(i,p(1,2),T))=out(p(1,2),p(1,3),T+tc(i,p(1,2),T))+dd;
                        k=T;
                        if out(p(1,2),p(1,3),k+tc(i,p(1,2),k))<=exit
                            od(p(1,2),j,k+tc(i,p(1,2),k))=od(p(1,2),j,k+tc(i,p(1,2),k))+dd;
                        else
                            while out(p(1,2),p(1,3),k+tc(i,p(1,2),k))>exit
                                diff=out(p(1,2),p(1,3),k+tc(i,p(1,2),k))-exit;
                                out(p(1,2),p(1,3),k+tc(i,p(1,2),k))=exit; %outflow rate can be changed
                                out(p(1,2),p(1,3),k+1+tc(i,p(1,2),k+1))=out(p(1,2),p(1,3),k+1+tc(i,p(1,2),k+1))+diff;
                                od(p(1,2),j,k+tc(i,p(1,2),k))=od(p(1,2),j,k+tc(i,p(1,2),k))+max(dd-diff,0);
                                dd=dd-max(dd-diff,0);
                                k=k+1;
                            end
                            od(p(1,2),j,k+tc(i,p(1,2),k))=od(p(1,2),j,k+tc(i,p(1,2),k))+dd;
                        end
                    else
                        %only one path, it is the link to exit the network
                        in(i,p(1,2),T)=in(i,p(1,2),T)+od(i,j,T);
                        outside(i,p(1,2),T+tc(i,p(1,2),T))=outside(i,p(1,2),T+tc(i,p(1,2),T))+od(i,j,T);
                    end
                end
            end
        end
        T=T+1;
    end
    
s0=0;
    s1=0;
    for i=1:T
        s0=(in(1,9,i)+in(2,13,i)+in(3,14,i)+in(4,18,i)+in(5,19,i)+in(6,23,i)+in(7,24,i)+in(8,12,i))*i+s0;
    end
    for i=1:T
        s1=(outside(9,1,i)+outside(13,2,i)+outside(14,3,i)+outside(18,4,i)+outside(19,5,i)+outside(23,6,i)+outside(24,7,i)+outside(12,8,i))*i+s1;
    end
    ttt(ii)=s1-s0;
end
%
%running time end
END=clock;
RUNTIME=etime(END,START);
save('asymmetric1.mat')