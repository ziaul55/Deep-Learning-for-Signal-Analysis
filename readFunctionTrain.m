% Copyright 2017 The MathWorks, Inc.

function I2 = readFunctionTrain(filename)
% resize the ekg data
I = imread(filename);

I2 = imresize(I, [227 227]);
