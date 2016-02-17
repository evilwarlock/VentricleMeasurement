% close all;

% 
% for i = 1:3
%     figure();
%     imshow(volume_image(:,:,i*30+1),[900,1900]);
%     figure();
%     imshow(vol1(:,:,i*30+1),[900,1900]);
% end
figure;
BW30 = regionprops(BW3, 'MajorAxisLength');
imshow(BW30);