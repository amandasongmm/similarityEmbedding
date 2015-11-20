function error_rate = getXError(X, valSet)
    error_count = 0;
    N = 953;
    D = squareform(pdist(X));
    no_viol = sum(D(sub2ind([N N], valSet(:,1), valSet(:,2))) > ...
                  D(sub2ind([N N], valSet(:,1), valSet(:,3))));
    error_rate = no_viol ./ size(valSet, 1);
end
