%Gausian Noise addition to an image
img=imread('lenabw.png');
%imshow(img);

%Adding noise
noise = randn(size(img));
output = img + noise;
imshow(output);