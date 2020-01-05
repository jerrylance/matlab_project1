% Homework1: Exercises in reading and writing images
% Zeyu Liu
% 1/29/2019
function homework1

% Read an image
f = imread('lena.dib');

%Use gray(256) colormap
colormap(gray(256));

% Display image f to screen
imagesc(f);
pause;

% Find number of rows and numbers of columns
[M,N] = size(f);

% Create a blank (all-zero) image
g = zeros(M,N);

% Copy image f and invert then write to g
for m=1:M,
    for n=1:N,
        g(m,n) = 255 - f(m,n);
    end;
end;

% Display inverted image
imagesc(g);

% Write inverted image to a file
imwrite(g,gray(256),'lena inverted.bmp');
