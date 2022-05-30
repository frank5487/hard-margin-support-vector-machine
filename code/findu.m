function [ui0, I] = findu(u, lamb, tolr)
p = size(u, 2);
n = size(u, 1);
count = 0;
total = zeros(n, 1);
for i = 1:p
    % disp(lamb(i));
    if lamb(i)> tolr
        count = count + 1;
        total = total + u(:, i);
    end
end
ui0 = total / count;
I = count;
end

