function [label] = my_spectralclusting(data, K, sigma)
    %build similarity graph
    W = zeros(height(data));
    simPoints = knnsearch(data,data,"Distance","euclidean","K",6);
    for i = 1:height(data)
        for x = 2:width(data)
            W(i,simPoints(i,x)) = exp((-1*pdist([data(i); data(simPoints(i,x))], 'euclidean') / sigma^2)); %data is normalized
        end
    end
    %build diagonal weighted matrix
    D = zeros(height(data));
    for i = 1:height(data)
        D(i,i) = sum(W(i,:));
    end
    %build Laplacian
    L = D - W;
    Lnorm = inv(D)*L;
    %create Eigenvalues/vectors Matrices
    eigVects = eig(L, 'matrix')
    eigVals = eig(L);
    [dontCare,newCols] = mink(eigVals, K);
    

    %keep getting results that dont make sense.



    label=true;
end