%This function try to get the number from user.
%It prompt the users, but has sets of default number provided when calling this funciton.
%By Yang Ding
%For Yang Ding.
%All freaking right reserved to hell :P as all open sources are....
%2014-09-11

function ChoiceNumber = Function_GetNumber(Prompt)

%initialize looping condition:
greetingLoop = true;

%Try to get user choice about analyses stream by suggest the default path.
while greetingLoop == true
    
    %Set input dialogue
    ChoiceNumber = inputdlg(Prompt,'Please Enter a Number',[1,100]);
    
    %Keep looping if isempty(ChoiceNumber) = true, only process it when it is
    %not empty
    if isempty(ChoiceNumber) == false
        %Check if it is empty
        if isempty(ChoiceNumber{1,1}) == true
            greetingLoop = true;
            waitfor(msgbox('Please enter a valid number.'));
            
        %Check if folder exist, if exist, PASS.
        elseif isnumeric(str2num(ChoiceNumber{1,1})) == true 
            
            greetingLoop = false;
            
        
            %Check if path exist.
        elseif isnumeric(ChoiceNumber{1,1}) == false
            waitfor(msgbox('Invalid Input.'));
        end
    end
end
%Make sure only output string, not cell.
ChoiceNumber = ChoiceNumber{1};
end