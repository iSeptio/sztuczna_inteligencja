function main( )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

%SETUP
dlugoscDna= 10;
mutationRate = 1;
popmax= 50;
%dlugoscDna=input('Jak dlugi kod DNA chcesz wylosowac?: ');
%mutationRate=input('Jaki procent mutacji?: ');
%create target
totalGenerations=0;
for i = 1:dlugoscDna
    target(i)=newChar();
end
%/create target
%createpopulation
for i = 1: popmax
    for j = 1:dlugoscDna
        population(i,j)= newChar();
    end
end
%/createpopulation
shouldStop=0;
%/SETUP
%DRAW
while shouldStop == 0;
    %CALCULATE FITNESS
    %MATINGPOOL
    score= 0;
    for i = 1: popmax
        for j = 1:dlugoscDna
            if population(i,j)==target(j)
                score= score + 1;
            end
        end
        fitness(i)= score/dlugoscDna*100;
        score= 0;
        
    end
    fitnessSum= 0;
    for i= 1:length(fitness)
        fitnessSum = fitnessSum + fitness(i);
    end
    for i= 1:length(fitness)
        fitnessScore(i)=fitness(i)/fitnessSum;
    end
    %/MatingPOOL
    %PARRENTPICKING
    for indexOfPopulation = 1:popmax
        fitnessRandom=rand();
        currentFitness=0;
        for i= 1:length(fitness)
            currentFitness=currentFitness+fitnessScore(i);
            if fitnessRandom<=currentFitness
                parrentOne=i;
                break;
                break;
                
            end
        end
        fitnessRandom=rand();
        currentFitness=0;
        for i= 1:length(fitness)
            currentFitness=currentFitness+fitnessScore(i);
            if fitnessRandom<=currentFitness
                parrentTwo=i;
                break;
                break;
            end
        end
        %/PARRENTPICKING
        %/CACLUCULATE FITNESS
        %CROSSOVER
        midpoint= randi([1,dlugoscDna]);
        for i= 1:dlugoscDna
            if i>midpoint
                dnaDziecka(i)=population(parrentOne,i)
            else
                dnaDziecka(i)=population(parrentTwo,i)
            end
        end
        %/CROSSOVER
        %MUTATE
        for i=1:dlugoscDna
            losowa= randi([1,100])
            if  losowa <= mutationRate
                dnaDziecka(i) = newChar();
            end
        end
        %/MUTATE
        %CHECKCHILD
        similiar=0;
        for i = 1: dlugoscDna
            if dnaDziecka(i)==target(i)
                similiar= similiar + 1;
            end
            if similiar ==dlugoscDna
                shouldStop=1;
            end
        end
        %/CHECKCHILD
        %ADDCHILDTONEWPOPULATION
        
        for j= 1:dlugoscDna
            
        end
        for i= 1:dlugoscDna
            newPopulation(indexOfPopulation,i)=dnaDziecka(i);
        end
        %ADDCHILDTONEWPOPULATION
        
    end
    %EXCHANGE POPULATION
    totalGenerations=totalGenerations+1;
    population=newPopulation;
    %/EXCHANGEPOPULATION
%endloop
end
%/endloop


fprintf('Ok koniec zabawy :D');


end

