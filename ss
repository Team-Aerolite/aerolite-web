% MATLAB code for estimate the level of Gaussian
% noise in the given image manually
% Reading the color image.
image=imread("cameraman.jpg");

% converting into gray.
image=rgb2gray(image);

% create the random gaussian noise of std=25
gaussian_noise=25*randn(size(image));

% add noise to the original image
noisy_image=double(image)+gaussian_noise;

% display the noisy image
imtool(noisy_image,[]);