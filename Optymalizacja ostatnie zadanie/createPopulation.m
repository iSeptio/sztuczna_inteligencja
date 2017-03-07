function [population] = createPopulation( num, dnaLength )
%generuje populacje
genes= [];
for j = 1: num
    for i = 1:dnaLength
        population(j,i)= newChar();
    end    
end
end


