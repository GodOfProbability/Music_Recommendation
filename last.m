new_trial  = zeros(1000,13,4);


    for j=1:1000
        for k = 1:13
           new_trial(j,k,1) = mean(Final_features(j,k,1:end));
           new_trial(j,k,2) = kurtosis(Final_features(j,k,1:end));
           new_trial(j,k,3) = skewness(Final_features(j,k,1:end));
           new_trial(j,k,4) = var(Final_features(j,k,1:end));
        end
    end
    

