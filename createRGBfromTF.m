function createRGBfromTF(ECGData)

createDirsForClassification(ECGData);

data = ECGData.Data;
labels = ECGData.Labels;

[~,signalLength] = size(data);
Fs = 128;

fb = cwtfilterbank('SignalLength',signalLength,'SamplingFrequency',Fs,'VoicesPerOctave',48);
[r,~] = size(data);


for ii = 1:r
    
    sig = data(ii,:);
    [wt,f] = fb.wt(sig);
    saveTimeFrequencyRep(wt,f,signalLength,ii,labels)  
    
end