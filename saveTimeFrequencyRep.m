function saveTimeFrequencyRep(wt,f,signalLength,ii,labels)
   
    hF = figure; 
    set(hF,'Visible','Off');
    hA = axes(hF);
    pcolor(hA,1:signalLength,log2(f),abs(wt)); 
    shading interp; colormap jet; axis tight;
    set(hA,'XTick',[]);
    set(hA,'YTick',[]);
    set(hA,'position',[0 0 1 1],'units','normalized');
    imgLoc = strcat('data',filesep,char(labels(ii)),filesep);
    imFileName = strcat(char(labels(ii)),'_',num2str(ii),'.jpg');
    print(fullfile(imgLoc,imFileName),'-djpeg','-r0');
    disp(imFileName);
    close(hF);
end