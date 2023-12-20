mu1 = [1.5 0];
mu2 = [6 4];
mu3 = [-4 4];

sigma1 = [1 1.5; 1.5 3];
sigma2 = [1 1.5; 1.5 3];
sigma3 = [1 1.5; 1.5 3];

n1 = 100;
n2 = 100;
n3 = 100;

dist1 = mvnrnd(mu1,sigma1,n1);
title1 = "Covariance for Distribution 1";
title12 = "Mean Vector for Distribution 1";
dist1Cov = cov(dist1);
dist1Mean = mean(dist1);
disp(title1);
disp(dist1Cov);
disp(title12);
disp(dist1Mean);

dist2 = mvnrnd(mu2,sigma2,n2);
title2 = "Covariance for Distribution 2";
title22 = "Mean Vector for Distribution 2";
dist2Cov = cov(dist2);
dist2Mean = mean(dist2);
disp(title2);
disp(dist2Cov);
disp(title22);
disp(dist2Mean);


dist3 = mvnrnd(mu3,sigma3,n3);
title3 = "Covariance for Distribution 3";
title32 = "Mean Vector for Distribution 3";
dist3Cov = cov(dist3);
dist3Mean = mean(dist3);
disp(title3);
disp(dist3Cov);
disp(title32);
disp(dist3Mean);

X = [dist1; dist2; dist3];

figure;
scatter(X(:,1),X(:,2),1,'+');
title("Testing Data");
