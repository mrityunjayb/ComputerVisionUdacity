%Blend two images
function output = blend( a, b, alpha )
%Blend This function is used to blend two images of same dimension. Alpha
%to be applied to image a.
output = a * alpha + (1-alpha) * b;
end

