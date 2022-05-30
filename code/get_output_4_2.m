% Project 4
    mkdir(['output' filesep 'rng_2'])
    mkdir(['output' filesep 'rng_2_images'])

v = cell(2, 50);
u = cell(2, 50);

v{1} = [1, 2, 3, 1, 1, 3, -1, -3;-1, 0, -2, -0.5, -4, -3, -3,-3];
u{1} = [-1, -1, 0, 1, -3, -4, 0.5, 3, 0.5;0, 1, 2, 3, 0, -2, 2, 2.5, 2.5];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This part is vital for the autograder so everyone gets the same results
% Comment out this part below if using this for the report
rng(987654321)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
u{2} = 10.1*randn(2,20)+15;
v{2} = -10.1*randn(2,20)-15;
u{3} = 10.1*randn(2,20)+10;
v{3} = -10.1*randn(2,20)-10;
u{4} = 10.1*randn(2,50)+18;
v{4} = -10.1*randn(2,50)-18;

%% Autograded part
rho = 10;
for i = 1:4 % length(u)
    [lamb,mu,w,b] = SVMhard2(rho, u{i}, v{i});
    % For autograder
    T = table(b, 'VariableNames', {'b'});
    fname = ['output' filesep 'rng_2' filesep sprintf('b%d.txt',i)];
    writetable(T, fname)
    % Write data to text file
    if ishandle(1)
        imname = ['output' filesep 'rng_2_images' filesep sprintf('img%d.png',i)];
        saveas(gcf, imname);
           close all
    end
end


