% Generate basic images: 
% 1. Black (all black image of size 32*32?
% 2. White (all pixels are white - 255?
% 3. Gray (gray value k=180?
% 4. White Gaussian
% Programmer: Kie Eom
% Date: 1/22/2019
function basic_images

% Number of rows = 32
M = 32;
% Number of columns = 32
N = 32;

% 1. Create an array or all zeros
f = zeros(M,N);
% Set colormap as 256-level gray
colormap(gray(256));
% Display image f
image(f);
pause;

% 2. Create an array of all white (255)
g = 255*ones(M,N);
% Display image g
image(g);
pause;

% 3. Create an array of all gray (180)
h = 180*ones(M,N);
% Display image h
image(h);
pause;

% 4. Create an array of white Gaussian noise (mean zero, variance 1)
w = randn(M,N);
% Display image w after scaling
imagesc(w);


