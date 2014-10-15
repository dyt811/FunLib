%This function try to read of the direction list line by line and parse it off..
%It prompt the users, but has sets of default locations.
%By Yang Ding
%For Yang Ding.
%All freaking right reserved to hell :P as all open sources are....

function [numberSubject listSubject] = Function_ReadList(FileName)
   
    %Check if it is empty
    if isempty(FileName) == false && exist(FileName) ==2 
        
        % List of subjects name readen in a txt file
        fid=fopen(FileName,'r'); %ENTER TEXT FILE NAME
        InputText=textscan(fid,'%s');
        
        Intro=InputText{1};
        
        listSubject=transpose(Intro);
        
        %disp(listSubject)

        numberSubject = length(listSubject);
        
    elseif exist(FileName) ~= 2  
        waitfor(msgbox(['The given list file: ',FileName,' is not in the proper format.'] ));
    elseif isempty(FileName) == true
        waitfor(msgbox(['The given list file: ',FileName,' does not exist.'] ));
        numberSubject = [];
        listSubject = [];
    else
        waitfor(msgbox(['Unexpected input condition for given list file: ',FileName'] ));
    end
end
