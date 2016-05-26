%Average of two images 
dolphin = imread('dolphin.jpg');
lena = imread ('lenacolor.png');

result = 0.75 * dolphin + 0.25 * lena;
imshow(result);