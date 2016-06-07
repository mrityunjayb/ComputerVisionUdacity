%Gaussian Filter
img=imread('../Images/lenabw.png');
hsize=31;
sigma=5;
h=fspecial('gaussian', hsize, sigma);
%surf(h);
%imshow(h);
outimg = imfilter(img,h);
imshow(outimg);


%% Smoothing with Gaussian
for sigma=1:3:10
h=fspecial('gaussian', fsize,sigma);
out=imfilter(img,h);
imshow(out);
pause(10);
end