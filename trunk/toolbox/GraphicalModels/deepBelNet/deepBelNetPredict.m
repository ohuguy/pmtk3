function prediction = deepBelNetPredict(model, testdata)
%Use deep belief net to predict class labels
%
% INPUTS:
% testdata(n,d) in [0,1]
% OUTPUTS
% prediction(n) in {1..C}


models = model.layers.models;
nlayers = numel(models);

%map input all the way to the top
for i=1:nlayers-1
    testdata= rbmVtoH(models{i}, testdata);
end
%and predict on the last layer
prediction = rbmPredict(models{end}, testdata);
end