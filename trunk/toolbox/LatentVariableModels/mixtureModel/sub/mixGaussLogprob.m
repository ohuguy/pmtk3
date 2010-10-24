function [logp] = mixGaussLogprob(mu, Sigma, mixWeight, X)
% logp(i) = log p(X(i,:) | mu(:, i), Sigma(:, :, i), mixWeight(i)s)
% This is just syntactic sugar for mixModelLogprob
%%

% This file is from pmtk3.googlecode.com


model = mixModelCreate(condGaussCpdCreate(mu, Sigma), 'gauss', numel(mixWeight), mixWeight); 
logp = mixModelLogprob(model, X); 
end