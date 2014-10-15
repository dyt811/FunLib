%This function try to save the SPM batch .MAT file with the proper naming convention.
%By Yang Ding
%For Yang Ding.
%All freaking right reserved to hell :P as all open sources are....

function Function_SaveDatedBatch(SubjectNumber,mFileName,BatchJobVariable)
    %Define this name by concatenating SUBJECT NUMBER, BATCH NAME, DATE and
    %EXTENSION together. 
    savefile=strcat(SubjectNumber,'-',mFileName,datestr(now,'yyyy-mm-dd'),'.mat');
    
    matlabbatch = BatchJobVariable;
    
    %Actually try to save this file. 
    save(savefile, 'matlabbatch','-mat');
end