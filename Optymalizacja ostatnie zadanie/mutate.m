function [ output_args ] = mutate( mutationRate, genes )
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here\
dlugosc= length(genes);
for i=1:dlugosc
    losowa= randi([1,100])
    if  losowa < mutationRate %nie ogarniam tej czesci
        genes(i) = newChar
    end     
end
end

