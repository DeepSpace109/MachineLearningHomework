data1 = load('data_Aggregation.mat');
trainData1 = data1.D;
data2 = load('data_Bridge.mat');
trainData2 = data2.D;
data3 = load('data_Compound.mat');
trainData3 = data3.D;
data4 = load('data_Flame.mat');
trainData4 = data4.D;
data5 = load('data_Jain.mat');
trainData5 = data5.D;
data6 = load('data_Spiral.mat');
trainData6 = data6.D;
data7 = load('data_TwoDiamonds.mat');
trainData7 = data7.D;

test1 = my_kmeans(trainData1, 7);
test2 = my_kmeans(trainData2, 2);
test3 = my_kmeans(trainData3, 6);
test4 = my_kmeans(trainData4, 2);
test5 = my_kmeans(trainData5, 2);
test6 = my_kmeans(trainData6, 3);
test7 = my_kmeans(trainData7, 2);

test8 = my_spectralclusting(trainData1,7,2);