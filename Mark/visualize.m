% % Define some random data
% x = X(:, 1);
% y = X(:, 2);
% N = length(x);
% 
% % Load an image
% imgs = {};
% for i=1:N
%     if mod(i, 100) == 0
%         i
%     end
%     path = strcat('http://52.23.229.132/2kFemale/F', num2str(i), '.jpg');
%     imgs = [imgs imread(path)];
% end

% Draw a scatter plot
scatter(x, y);
axis([-20 20 -20 20]);

% Offsets of image from associated point
dx = 0.002;
dy = 0.002;

for i = 1:N
  width = 0.2;
  height = size(imgs{i}, 1) / size(imgs{i}, 2) * width;
  image('CData', imgs{i},...
        'XData', [x(i)-dx x(i)-(dx+width)],...
        'YData', [y(i)-dy y(i)-(dy+height)]);
end