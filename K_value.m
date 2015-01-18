[ U S V] = pca(new_trial);


%%%%%%%%%%checking the value of K which is suitable%%%%%%%
diagonals = diag(S);
variance = zeros(29,1);
for k = 100:100:1400
    variance(k/100) = 1- sum(diagonals(1:k))/sum(diagonals(1:end));
end

z = new_trial*U(:,1:500);