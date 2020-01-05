% Generate a 256x256 image with a disk of three different distance
% measures
function disk_gen

N = 256;
R = 50;

fE = zeros(N);
f4 = zeros(N);
f8 = zeros(N);

for m=1:N,
    % m1 is a variable having positive and negative values
    if (m>N/2) m1 = m-1-N;
    else m1 = m-1;
    end;
    for n=1:N,
        % n1 is a variable having positive and negative values
        if (n>N/2) n1 = n-1-N;
        else n1 = n-1;
        end;
        % compute Euclidian distance from the origin
        distE = sqrt(m1^2+n1^2);
        % compute City-block distance from the origin
        dist4 = abs(m1)+abs(n1);
        % compute Checkboard distance from the origin
        dist8 = max(abs(m1),abs(n1));
        % if pixel is within a disk of radius 50, then color it white
        if (distE<R)
            fE(m,n) = 255;
        end;
        if (dist4<R)
            f4(m,n) = 255;
        end;
        if (dist8<R)
            f8(m,n) = 255;
        end;        
    end;
end;


colormap(gray(256));

image(fE);
pause;

image(f4);
pause;

image(f8);