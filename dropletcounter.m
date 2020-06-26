function d = dropletcounter(ff,lf)
d = [];
for i = ff:lf % Some number of frames
% Read frame
frame = sprintf('BSA (%d).jpg', i);
input = imread(frame);
level = graythresh(input);
BW = im2bw(input,level);
LB = 100; UB = 5000;
Iout = xor(bwareaopen(BW,LB), bwareaopen(BW,UB));
Icrop = imcrop(Iout,[900 0 900 1800]);
s = regionprops(Icrop,'Area');
%tot = sum([s(:).FilledArea]);
%tot = bwarea(BW);
tot = numel(s);
d = [d;tot];
imshow(Iout)
end
x = [ff:lf]';
plot(x,d,'ro')
end
