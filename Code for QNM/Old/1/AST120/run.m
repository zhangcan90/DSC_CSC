START=clock;%running time start
t=120; % time index


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
exit=60;%can be changed

% clear time
dt=2000;

%error
error=randn([m,n,t+dt]);

parfor demand = 1:6 % different cyclelength
%h=6;
    for h=4:21
    %define parameters
    in=zeros(m,n,t+dt); %inflow rate
    out=zeros(m,n,t+dt); %outflow rate
    tc=zeros(m,n,t+dt); %travel cost matrix
    od=zeros(m,n,t+dt); %OD matrix

    %intersection signal [phase 1; phase 2; phase 3 ;phase 4; offset]
    phaseplan=[h.*ones(4,4) zeros(4,1)];  %can be changed, remain the same cycle length, and offset from 0 to 59
    signal=enSignal(phaseplan,phase,m,n,t+dt);

    %initial OD
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
    while T<t+dt-300 % can be changed
        for i=1:m
            for j=1:n
                if od(i,j,T)>0
                    p=findPath(rtc(:,:,T),i,j,0);
                    p=sortrows(p,m+1);
                    [a,b]=size(p);
                    if a>1
                        k=T;
                        dd=od(i,j,T);
                        in(i,p(1,2),T)=in(i,p(1,2),T)+dd;
                        out(i,p(1,2),T+tc(i,p(1,2),T))=out(i,p(1,2),T+tc(i,p(1,2),T))+dd;
                        if out(i,p(1,2),k+tc(i,p(1,2),k))<=exit
                            od(p(1,2),j,k+tc(i,p(1,2),k))=od(p(1,2),j,k+tc(i,p(1,2),k))+dd;
                        else
                            while out(i,p(1,2),k+tc(i,p(1,2),k))>exit
                                diff=out(i,p(1,2),k+tc(i,p(1,2),k))-exit;
                                out(i,p(1,2),k+tc(i,p(1,2),k))=exit; %outflow rate can be changed
                                out(i,p(1,2),k+1+tc(i,p(1,2),k+1))=out(i,p(1,2),k+1+tc(i,p(1,2),k+1))+diff;
                                od(p(1,2),j,k+tc(i,p(1,2),k))=od(p(1,2),j,k+tc(i,p(1,2),k))+dd-diff;
                                dd=diff;
                                k=k+1;
                            end
                            od(p(1,2),j,k+tc(i,p(1,2),k))=od(p(1,2),j,k+tc(i,p(1,2),k))+dd;
                        end
                    else
                        in(i,p(1,2),T)=in(i,p(1,2),T)+od(i,j,T);
                        out(i,p(1,2),T+tc(i,p(1,2),T))=out(i,p(1,2),T+tc(i,p(1,2),T))+od(i,j,T);
                        %
                        k=T;
                        if out(i,p(1,2),k+tc(i,p(1,2),k))>exit
                            while out(i,p(1,2),k+tc(i,p(1,2),k))>exit
                                diff=out(i,p(1,2),k+tc(i,p(1,2),k))-exit;
                                out(i,p(1,2),k+tc(i,p(1,2),k))=exit;
                                out(i,p(1,2),k+1+tc(i,p(1,2),k+1))=out(i,p(1,2),k+1+tc(i,p(1,2),k+1))+diff;
                                k=k+1;
                                %outflow rate can be changed
                            end
                        end
                    end
                end
            end
        end
%         
        T=T+1;

    end
    
% linkflow=zeros(m,n,t+dt); %link flow
% for i=1:m
%     for j=1:n
%         for k=1:T
%             linkflow(i,j,k)=linkflow(i,j,k)+in(i,j,k)-out(i,j,k);
%         end
%     end
% end

%total travel time
    s0=0;
    s1=0;
    for i=1:T
        s0=(in(1,9,i)+in(2,13,i)+in(3,14,i)+in(4,18,i)+in(5,19,i)+in(6,23,i)+in(7,24,i)+in(8,12,i))*i+s0;
    end
    for i=1:T
        s1=(out(9,1,i)+out(13,2,i)+out(14,3,i)+out(18,4,i)+out(19,5,i)+out(23,6,i)+out(24,7,i)+out(12,8,i))*i+s1;
    end
    ttt=s1-s0;
    parsave(sprintf('outputwithphase%ddemand%d.mat',h,demand), in, out,od,ttt);
    end
end
%
%running time end
END=clock;
RUNTIME=etime(END,START);

