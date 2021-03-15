% load color image and display it
I = imread('cat.jpg');
figure,
subplot(3,2,1), imshow(I), title('Original image');
% convert it to grayscale if needed
grayI = rgb2gray(I);
subplot(3,2,2), imshow(grayI), title('Grayscale image')
% divide the image into 4 parts with the same size
% [row,col] = size(grayI);
% I1 = grayI(1:round(row/2), 1:round(col/2));
% I2 = grayI(1:round(row/2), round(col/2)+1:end);
% I3 = grayI(round(row/2)+1:end, 1:round(col/2));
% I4 = grayI(round(row/2)+1:end, round(col/2)+1:end);
% subplot(3,2,3), imshow(I1), title('UpperLeft')
% subplot(3,2,4), imshow(I2), title('UpperRight')
% subplot(3,2,5), imshow(I3), title('LowerLeft')
% subplot(3,2,6), imshow(I4), title('LowerRight')

% ----------------Nearest----------------
% resize the image with Nearest in 4 different size

small1 = imresize(grayI, 0.5);
small2 = imresize(grayI, 0.5^3);
small3 = imresize(grayI, 0.5^5);
small4 = imresize(grayI, 0.5^7);

nearest1 = imresize(small1 , 2 , 'nearest');
nearest2 = imresize(small2 , 2^3 , 'nearest');
nearest3 = imresize(small3 , 2^5 , 'nearest');
nearest4 = imresize(small4 , 2^7 , 'nearest');

subplot(3,2,3), imshow(nearest1), title('Nearest(0.5)');
subplot(3,2,4), imshow(nearest2), title('Nearest(0.5^3)');
subplot(3,2,5), imshow(nearest3), title('Nearest(0.5^5)');
subplot(3,2,6), imshow(nearest4), title('Nearest(0.5^7)');
% ----------------Nearest----------------

% ----------------Bilinear----------------
% resize the image with Bilinear in 4 different size

% small1 = imresize(grayI, 0.5);
% small2 = imresize(grayI, 0.5^3);
% small3 = imresize(grayI, 0.5^5);
% small4 = imresize(grayI, 0.5^7);
% 
% bilinear1 = imresize(small1 , 2 , 'bilinear');
% bilinear2 = imresize(small2 , 2^3 , 'bilinear');
% bilinear3 = imresize(small3 , 2^5 , 'bilinear');
% bilinear4 = imresize(small4 , 2^7 , 'bilinear');
% 
% subplot(3,2,3), imshow(bilinear1), title('Bilinear(0.5)');
% subplot(3,2,4), imshow(bilinear2), title('Bilinear(0.5^3)');
% subplot(3,2,5), imshow(bilinear3), title('Bilinear(0.5^5)');
% subplot(3,2,6), imshow(bilinear4), title('Bilinear(0.5^7)');

% ----------------Bilinear----------------

% ----------------Bicubic----------------
% resize the image with Bicubic in 4 different size

% small1 = imresize(grayI, 0.5);
% small2 = imresize(grayI, 0.5^3);
% small3 = imresize(grayI, 0.5^5);
% small4 = imresize(grayI, 0.5^7);
% 
% bicubic1 = imresize(small1 , 2 , 'bicubic');
% bicubic2 = imresize(small2 , 2^3 , 'bicubic');
% bicubic3 = imresize(small3 , 2^5 , 'bicubic');
% bicubic4 = imresize(small4 , 2^7 , 'bicubic');
% 
% subplot(3,2,3), imshow(bicubic1), title('Bicubic(0.5)');
% subplot(3,2,4), imshow(bicubic2), title('Bicubic(0.5^3)');
% subplot(3,2,5), imshow(bicubic3), title('Bicubic(0.5^5)');
% subplot(3,2,6), imshow(bicubic4), title('Bicubic(0.5^7)');

% ----------------Bicubic----------------
