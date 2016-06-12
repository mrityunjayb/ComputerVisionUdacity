% Explore edge options
pkg load image;

%% Load an image
img = imread('../Images/fall-leaves.png');  % also available: peppers.png, mandrill.png
imshow(img);

%% TODO: Create a Gaussian filter
filter_size=11;
filter_sigma=2;
filter=fspecial('gaussian',filter_size, filter_sigma);

%% TODO: Apply it, specifying an edge parameter (try different parameters)
%%Clip Filter
smoothed=imfilter(img,filter,0);
%%Wrap Around
%smoothed=imfilter(img,filter,'circular');
%%Copy Edge
%smoothed=imfilter(img,filter,'replicate');
%%Reflect/Symmetric across edge
%smoothed=imfilter(img,filter,'symmetric');

imshow(smoothed);
