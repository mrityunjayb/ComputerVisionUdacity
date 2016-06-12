% Find template 2D
% NOTE: Function definition must be the very first piece of code here!
function [yIndex xIndex] = find_template_2D(template, img)
    % TODO: Find template in img and return [y x] location
    % NOTE: Turn off all output from inside the function before submitting!
    c = normxcorr2(template,img);
    [yRaw xRaw] = find(c==max(c(:)));
    yIndex = yRaw - size(template,1) + 1;
    xIndex = xRaw - size(template,2) + 1;
    
endfunction

pkg load image; % AFTER function definition

% Test code:
tablet = imread('../Images/tablet.png');
imshow(tablet);
glyph = tablet(75:165, 150:185);
imshow(glyph);

[y x] = find_template_2D(glyph, tablet);
disp([y x]); % should be the top-left corner of template in tablet

%Plot where the template was found
colormap('gray'), imagesc(tablet);
hold on;
plot(x,y,'r+','markersize',16);
hold off;