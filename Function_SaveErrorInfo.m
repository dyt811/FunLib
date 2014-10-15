function Function_SaveErrorInfo(indexFailedCase,dataDir,failedFolder,mFileName )
%THis function attempts to save all the error produced during an analyses
%staeg and put them into the proper place at the END of the analyses.

failedFolderInformation = failedFolder;

disp(['All completed. Error number:',num2str(indexFailedCase)]);

if indexFailedCase > 0
    cd(dataDir);
    saveMatName = ['ErrorInfo-',mFileName,datestr(now,'yyyy-mm-dd'),'.mat',];
    save(saveMatName,'failedFolderInformation');
    disp(['Error info has been saved as ', saveMatName, ' in: '])
    disp(pwd)
end


end

