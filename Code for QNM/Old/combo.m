function all = combo(step)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
all=[];
    for h=1:4
        for j=1:4
            for k=1:4
                for l=1:4
                    all=[all;(h-1)*step (j-1)*step (k-1)*step (l-1)*step];
                end
            end
        end
    end
end

