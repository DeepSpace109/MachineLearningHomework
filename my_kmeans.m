function [label] = my_kmeans(data, K)
    
    % generates K random centroids from dataset
    c = randperm(height(data), K); 
    centroids = data(c,:);
    
    flag = false;
    iterations = 0;
    while flag == false
        datapointEstimates = [];
        for i = 1:height(data) %classifies each datapoint to its nearest centroid
            pointDist = [1, pdist([data(i); centroids(1)], 'euclidean')];
            for x = 1:height(centroids)
                newDist = pdist([data(i); centroids(x)], 'euclidean'); %finds euclidean distance between centroid x and datapoint i
                if newDist < pointDist(1, 2) %if the distance is smaller than the previous assignment, update the assignment to the smaller centroid
                    pointDist = [x, newDist];
                end
            end
            datapointEstimates = [datapointEstimates; pointDist]; %add the minimized distance
        end       
        
        newCentroids = [];
        for c = 1:height(centroids) % generate new centroid
            filteredPoints = [];
            for i = 1:height(datapointEstimates) %filter the points attached to that centroid
                if datapointEstimates(i,1) == c
                    filteredPoints = [filteredPoints; data(i,1),data(i,2)];
                end
            end
            newCentroids = [newCentroids; mean(filteredPoints)];
        end
        if newCentroids == centroids %detect that no change has occured in the centroids
            label = centroids;
            flag = true;
            trueBelonging = datapointEstimates;
        else
            centroids = newCentroids;
            iterations = iterations + 1;
        end     
    end

    
    figure;
    scatter(centroids(:,1),centroids(:,2),100,'+');
    hold on;
    scatter(data(:,1),data(:,2),1,'.');
    title("Testing Data");
    
   
    
    
    
    
    


end