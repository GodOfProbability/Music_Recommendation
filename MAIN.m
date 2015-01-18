cd('C:\Users\Perceptron\Desktop\Brian_Computer_Interface\DSP\Genres');
listing = dir('C:\Users\Perceptron\Desktop\Brian_Computer_Interface\DSP\Genres');
Features = zeros(1000,36,2984);
% signal = zeros(100,661794);
files = listing(3:end);

for i= 1:2
[signal, fs]= audioread(files(i).name);
signal = signal(1:660000,1);
i
cd('C:\Users\Perceptron\Desktop\Music_Recommendation\Audio_Signal_Directory\library');
Features(i,:,:) = stFeatureExtraction(signal, fs, .025, .010);
cd('C:\Users\Perceptron\Desktop\Brian_Computer_Interface\DSP\Genres');
end

%signal = permute(signal,[2 1]);

Feature = zeros(1000,0);
for i=1:1000
    for j=1:36
    Feature(i,:) = [Feature(i,:)  Features(i,j,:)];
    end
end

label = zeros(1000,1);
for i =1:10
    label((i-1)*100+1:i*100) = i;
end


croma = zeros(1000,1,2984);
for i=1:1000
     for j=1:2984
       croma(i,1,j) = mean(Final_features(i,:,j));
end 
end



Final_feature = Features (:,[1:8 22 23 36],:);