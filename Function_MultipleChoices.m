function FinalChoice = Function_MultipleChoices(greetingPrompt,choiceList)
%This function does GUI wrap of a multiple choice to ensure that user only
%choose a relevant one.

%choiceList must be a CELL containing series of strings to be used. 

%Prompt user for types of analyses to run.
%greetingPrompt={'What type of HRF Modeling would like to use? (1=HRF; 2=HRF+)'};

%initialize looping condition:
greetingLoop = true;

%Try to get user choice about analyses stream
while greetingLoop == true
    
    greetingAnswer = menu(greetingPrompt,choiceList);
    
    %Iterate over the length of the choice list
    for choiceIndex = 1 :length(choiceList) 
        %Check if they contain the choice,
        if greetingAnswer == choiceIndex
            FinalChoice = choiceList(choiceIndex);
            %Exit greeting loop.
            greetingLoop = false;
        end    
    end
    
    
end



end

