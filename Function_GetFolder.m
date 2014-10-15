%This function try to get the data folder direction.
%It prompt the users, but has sets of default locations provided when calling this funciton.
%By Yang Ding
%For Yang Ding.
%All freaking right reserved to hell :P as all open sources are....

function WorkingDir = Function_GetFolder(Prompt,DefaultPath)

%initialize looping condition:
greetingLoop = true;

%Try to get user choice about analyses stream by suggest the default path.
while greetingLoop == true
    
    %Set input dialogue
    WorkingDir = inputdlg(Prompt,'Selecet Data Loctaion',[1,100],{DefaultPath});
    
    %Keep looping if isempty(WorkingDir) = true, only process it when it is
    %not empty
    if isempty(WorkingDir) == false
        %Check if it is empty
        if isempty(WorkingDir{1,1}) == true
            greetingLoop = true;
            waitfor(msgbox('Please enter a valid string.'));
            
        %Check if folder exist, if exist, PASS.
        elseif exist(WorkingDir{1,1}) == 7 
            %|| exist(WorkingDir{1,1}) == 2
            greetingLoop = false;
            
        
            %Check if path exist.
        elseif exist(WorkingDir{1,1}) == 0
            waitfor(msgbox('The given folder does not exist.'));
        end
    end
end
%Make sure only output string, not cell.
WorkingDir = WorkingDir{1};
end