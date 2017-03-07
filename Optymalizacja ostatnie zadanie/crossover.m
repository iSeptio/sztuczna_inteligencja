function [ dnaDziecka ] = crossover( dnaMatki, dnaOjca )
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
dlugosc= length(dnaMatki);
midpoint= randi([1,dlugosc]);
for i= 1:dlugosc
    if i>midpoint
        dnaDziecka(i)=dnaMatki(i)
    else
        dnaDziecka(i)=dnaOjca(i)
    end
end    


end

