function c = newChar
% generuje losowa du?a litere
%A= 65
%C= 67
%G= 71
%T= 84
randomNum=randi([1,4]);

switch randomNum
    case 1
        c = char(65)
    case 2
        c = char(67)
    case 3
        c = char(71)
    case 4
        c = char(84)
    otherwise
        disp('problem w newChar')
end
end

