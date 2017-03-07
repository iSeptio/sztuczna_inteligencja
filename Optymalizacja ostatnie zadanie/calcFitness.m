function [fitness] = calcFitness( pobraneDna, podstawoweDna)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here


dlugoscDna = length(podstawoweDna);
score= 0;
for i = 1:dlugoscDna
    if podstawoweDna(i)==pobraneDna(i)
        score= score + 1;
    end
end
fitness= score/dlugoscDna * 100;

end


