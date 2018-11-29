% Computes the extended Euclidean Algorithm with inputs a,b 
% Returns r,x,y such that ax+by=r where r=gcd(a,b)

function [r, x, y] = extendedEuclidean(a,b)

a0 = a;
b0 = b;
t0 = 0;
t = 1;
s0 = 1;
s = 0;
q = floor(a0/b0);
r = a0 - q * b0;

while r>0
    temp = t0 - q*t;
    t0 = t;
    t = temp;
    temp = s0 - q*s;
    s0 = s;
    s = temp;
    a0 = b0;
    b0 = r;
    q = floor(a0/b0);
    r = a0 - q*b0;
end
r = b0;
x = s; 
y = t;

end

