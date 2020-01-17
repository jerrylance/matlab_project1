% Compute distance map using three different distance measures
% 1. Eucledian, 2. City Block, 3. Checker Board
% Kie Eom
% 1/22/2019
function distance_map

% Image size = 16x16
N = 16

% Eucledian distance
dE = zeros(N);
for m=1:N,
    for n=1:N,
        dist = sqrt((m-8)^2+(n-8)^2);
        dE(m,n) = dist;
    end;
end;
% Set gray scal colormap
colormap(gray(256));
% Display distance map image
imagesc(dE);
pause;

% City block distance
d4 = zeros(N);
for m=1:N,
    for n=1:N,
        dist = abs(m-8) + abs(n-8);
        d4(m,n) = dist;
    end;
end;
% Display distance map image
imagesc(d4);
pause;

% Checker board distance
d8 = zeros(N);
for m=1:N,
    for n=1:N,
        dist = max(abs(m-8),abs(n-8));
        d8(m,n) = dist;
    end;
end;
% Display distance map image
imagesc(d8);