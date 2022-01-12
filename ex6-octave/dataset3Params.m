function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%


##sigmaTemp = 0.01;
##CTemp = 1;
##bestErrors = length(Xval)
##
### Find the best C and sigma value, by finding the values with the least error 
### on the cross-validation set
### Do for C value and sigma values going from 0.01 to 30
##for i=0:7,
##  if mod(i, 2) == 0,
##    sigmaTemp = 10^(i/2-2);
##  else
##     sigmaTemp = sigmaTemp * 3;
##  endif;
##  for j=0:7,
##    if mod(j, 2) == 0,
##      CTemp = 10^(j/2-2);
##    else
##       CTemp = CTemp * 3;
##    endif;
##    % We set the tolerance and max_passes lower here so that the code will run
##    % faster. However, in practice, you will want to run the training to
##    % convergence.
##    model = svmTrain(X, y, CTemp, @(x1, x2) gaussianKernel(x1, x2, sigmaTemp)); 
##
##    predictions = svmPredict(model, Xval);
##
##    CTemp;
##    sigmaTemp;
##    errors = mean(double(predictions ~= yval));
##    if errors < bestErrors,
##      C = CTemp;
##      sigma = sigmaTemp;
##      bestErrors = errors;
##    endif;
##  end;  
##end;




% =========================================================================

end
