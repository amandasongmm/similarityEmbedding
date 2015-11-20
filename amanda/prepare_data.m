function [trainSet, valSet, testSet] = prepare_data()
    addpath('STE_Release');
    disp('Loading raw data...');
    load('STE_Release/data/faceTriplet.mat');
    sampleSize = size(faceTriplet, 1);
    trainRatio = 0.8;
    testRatio = 0.1;
    valRatio = 0.1;

    % Generate trainSet, valSet, and testSet
    while 1
        [trainInd,valInd,testInd] = dividerand(sampleSize, trainRatio, valRatio, testRatio);
        trainSet = faceTriplet(trainInd, :);
        testSet = faceTriplet(testInd, :);
        valSet = faceTriplet(valInd, :);

        % Test if all 953 numbers occured in trainSet
        trainSet_flattened = reshape(trainSet, [size(trainSet, 1) * size(trainSet, 2), 1]);
        mapObj = containers.Map;
        for i = 1: length(trainSet_flattened)
            mapObj(int2str(trainSet_flattened(i))) = 1;
        end
        if mapObj.size(1) == 953
            break
        end
        disp('Some indices are not in trainSet. Regenerating.');
    end
end