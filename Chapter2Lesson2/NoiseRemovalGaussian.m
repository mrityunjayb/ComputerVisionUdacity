%Remove noise with a Gaussian filter

%Read Image
img = imread('../Images/lenabw.png');
imshow(img);

%%Add some nosie to the image
noise_sigma=25;
noise = randn(size(img)).*noise_sigma;
noisy_img = img+noise;
imshow(noisy_img);


%%Create a Gaussian Filter
filter_size=11;
filter_sigma=2;
filter=fspecial('gaussian',filter_size, filter_sigma);


%%Apply it to remove noise
smoothed = imfilter(noisy_img,filter);
imshow(smoothed);
