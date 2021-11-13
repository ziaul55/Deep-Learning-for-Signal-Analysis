function createDirsForClassification(ECGData)

folderLabels = unique(ECGData.Labels);
f = filesep;
for i = 1:numel(folderLabels)
    
    if exist(strcat('data',f,char(folderLabels(i))),'dir') == 7
        disp('Directory Already Exists');
    else
    mkdir(strcat('data',f,char(folderLabels(i))));
    end 
end