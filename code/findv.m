function [vi0, I] = findv(v, mu, tols)
q = size(v, 2);
n = size(v, 1);
count = 0;
total = zeros(n, 1);
for i = 1:q
    if mu(i) > tols
        count = count + 1;
        total = total + v(:, i);
    end
end
vi0 = total / count;
I = count;
end

