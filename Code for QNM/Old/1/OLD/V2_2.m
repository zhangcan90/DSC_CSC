t1=clock;%running time start
ttt=zeros(1,10);    

t=300; % time index


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
fft=20.*geo;
fft(9:12,9:12)=turn;
fft(13:16,13:16)=turn;
fft(17:20,17:20)=turn;
fft(21:24,21:24)=turn;
%value can be changed



% phase number
phase=[0 1 2 2; 4 0 3 4; 2 2 0 1;3 4 4 0];

%size of the network
[m,n]=size(geo);

%capcity for link i j
capacity=300.*geo; % value can be changed

%exit rate
exit=120;%can be changed

parfor h = 6:15 % different cyclelength

    %define parameters
    linkflow=zeros(m,n,t+500); %link flow
    in=zeros(m,n,t+500); %inflow rate
    out=zeros(m,n,t+500); %outflow rate
    tc=zeros(m,n,t+500); %travel cost matrix
    od=zeros(m,n,t+500); %OD matrix

    %intersection signal [phase 1; phase 2; phase 3 ;phase 4; offset]
    phaseplan=[h.*ones(4,4) zeros(4,1)];  %can be changed, remain the same cycle length, and offset from 0 to 59
    signal=enSignal(phaseplan,phase,m,n,t+500);

    %initial OD
    for i=1:8 % 8 origin and destination
        for j=1:8
            for k=1:t
                if i~=j
                    od(i,j,k)=2;%can be any value or stochastic
                end
            end
        end
    end

    %system clock
    T=1;

    %initial travel cost
    tc(:,:,T)=fft+signal(:,:,T);

    % network dynamics
    while T<t+500 % can be changed
        for i=1:m
            for j=1:n
                if od(i,j,T)>0
                    p=findPath(tc(:,:,T),i,j,0);
                    p=sortrows(p,m+1);
                    [a,b]=size(p);
                    if a>1
                        if p(1,m+1)<p(2,m+1)
                            in(i,p(1,2),T)=in(i,p(1,2),T)+od(i,j,T);
                            out(i,p(1,2),T+tc(i,p(1,2),T))=out(i,p(1,2),T+tc(i,p(1,2),T))+od(i,j,T);
                            if out(i,p(1,2),T+tc(i,p(1,2),T))>exit
                                diff=out(i,p(1,2),T+tc(i,p(1,2),T))-exit;
                                out(i,p(1,2),T+tc(i,p(1,2),T)+1)=out(i,p(1,2),T+tc(i,p(1,2),T)+1)+diff;
                                out(i,p(1,2),T+tc(i,p(1,2),T))=exit; %outflow rate can be changed
                                od(p(1,2),j,T+tc(i,p(1,2),T))=od(p(1,2),j,T+tc(i,p(1,2),T))+od(i,j,T)-diff;
                                od(p(1,2),j,T+tc(i,p(1,2),T)+1)=od(p(1,2),j,T+tc(i,p(1,2),T)+1)+diff;
                            else  
                            %if p(1,3)~=0
                            od(p(1,2),j,T+tc(i,p(1,2),T))=od(p(1,2),j,T+tc(i,p(1,2),T))+od(i,j,T);
                            end
                        else
                            in(i,p(1,2),T)=in(i,p(1,2),T)+od(i,j,T)/2;
                            in(i,p(2,2),T)=in(i,p(2,2),T)+od(i,j,T)/2;
                            %
                            out(i,p(1,2),T+tc(i,p(1,2),T))=out(i,p(1,2),T+tc(i,p(1,2),T))+od(i,j,T)/2;
                            if out(i,p(1,2),T+tc(i,p(1,2),T))>exit
                                diff=out(i,p(1,2),T+tc(i,p(1,2),T))-exit;
                                out(i,p(1,2),T+tc(i,p(1,2),T)+1)=out(i,p(1,2),T+tc(i,p(1,2),T)+1)+diff;
                                out(i,p(1,2),T+tc(i,p(1,2),T))=exit; %outflow rate can be changed
                                od(p(1,2),j,T+tc(i,p(1,2),T))=od(p(1,2),j,T+tc(i,p(1,2),T))+od(i,j,T)/2-diff;
                                od(p(1,2),j,T+tc(i,p(1,2),T)+1)=od(p(1,2),j,T+tc(i,p(1,2),T)+1)+diff;
                            else  
                            %if p(1,3)~=0
                            od(p(1,2),j,T+tc(i,p(1,2),T))=od(p(1,2),j,T+tc(i,p(1,2),T))+od(i,j,T)/2;
                            end
                            %
                            %
                            out(i,p(2,2),T+tc(i,p(2,2),T))=out(i,p(2,2),T+tc(i,p(2,2),T))+od(i,j,T)/2;
                            if out(i,p(2,2),T+tc(i,p(2,2),T))>exit
                                diff=out(i,p(2,2),T+tc(i,p(2,2),T))-exit;
                                out(i,p(2,2),T+tc(i,p(2,2),T)+1)=out(i,p(2,2),T+tc(i,p(2,2),T)+1)+diff;
                                out(i,p(2,2),T+tc(i,p(2,2),T))=exit; %outflow rate can be changed
                                od(p(2,2),j,T+tc(i,p(2,2),T))=od(p(2,2),j,T+tc(i,p(2,2),T))+od(i,j,T)/2-diff;
                                od(p(2,2),j,T+tc(i,p(2,2),T)+1)=od(p(2,2),j,T+tc(i,p(2,2),T)+1)+diff;
                            else  
                            %if p(1,3)~=0
                            od(p(2,2),j,T+tc(i,p(2,2),T))=od(p(2,2),j,T+tc(i,p(2,2),T))+od(i,j,T)/2;
                            end   
                            %
                        end
                    else
                        in(i,p(1,2),T)=in(i,p(1,2),T)+od(i,j,T);
                        out(i,p(1,2),T+tc(i,p(1,2),T))=out(i,p(1,2),T+tc(i,p(1,2),T))+od(i,j,T);
                        %
                        if out(i,p(1,2),T+tc(i,p(1,2),T))>exit
                        diff=out(i,p(1,2),T+tc(i,p(1,2),T))-exit;
                        out(i,p(1,2),T+tc(i,p(1,2),T)+1)=out(i,p(1,2),T+tc(i,p(1,2),T)+1)+diff;
                        out(i,p(1,2),T+tc(i,p(1,2),T))=exit; %outflow rate can be changed
                        end
                        %
                    end
                end
            end
        end
        
        for i=1:m
            for j=1:n
                for k=1:T
                    linkflow(i,j,T)=linkflow(i,j,T)+in(i,j,k)-out(i,j,k);
                end
            end
        end
        
        T=T+1;
        
        tc(:,:,T)= travelcost(linkflow(:,:,T),fft,capacity,geo)+signal(:,:,T);
    end

    %total travel time
    s0=0;
    s1=0;
    for i=1:T
        s0=(in(1,9,i)+in(2,13,i)+in(3,14,i)+in(4,18,i)+in(5,19,i)+in(6,23,i)+in(7,24,i)+in(8,12,i))*i+s0;
    end
    for i=1:T
        s1=(out(9,1,i)+out(13,2,i)+out(14,3,i)+out(18,4,i)+out(19,5,i)+out(23,6,i)+out(24,7,i)+out(12,8,i))*i+s1;
    end
    ttt(h-5)=s1-s0;
end

    %running time end
    t2=clock;
    etime(t2,t1)
