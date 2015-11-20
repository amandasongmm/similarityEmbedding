% [trainSet, valSet, testSet] = prepare_data();

param_set_results = [];
param_dim = 2;
for param_alpha = 
    param_lambdas = logspace(0, 2, );
X = tste(trainSet, param_dim, param_alpha, param_lambda, true, false);
error_rate = getXError(X, valSet);
param_set_results =...
    [param_set_results [param_dim; param_alpha; param_lambda; error_rate]]





