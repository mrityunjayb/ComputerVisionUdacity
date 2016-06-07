% Generate Gaussian noise
%noise = rand([1 100000]);
noise = randn([1 100000]);
%noise = randi([1 100000]);
[n x] = hist(noise, linspace(-3, 3, 25));
%disp([x; n]);
plot(x, n);

% TODO: Try generating other kinds of random numbers.
%       How about a 2D grid of random Gaussian values?