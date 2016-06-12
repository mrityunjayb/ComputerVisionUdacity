% For Your Eyes Only
pkg load image;

frizzy = imread('../Images/frizzy.png');
froomer = imread('../Images/froomer.png');
imshow(frizzy);
imshow(froomer);

% TODO: Find edges in frizzy and froomer images
imshow(edge(rgb2gray(frizzy)),'canny');
imshow(edge(rgb2gray(froomer)),'canny');

% TODO: Display common edge pixels
imshow((edge(rgb2gray(frizzy))) & (edge(rgb2gray(froomer))));