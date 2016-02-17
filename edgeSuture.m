close all;
load volume_image.mat;
matV = volume_image-1024;
%  matV = volume_image;

%% visualization for bones
% for i = 1:30
%     figure;
%     imshow(matV(:,:,i*3+1),[900 1900]);
% end
i =10;
% figure;
% imshow(matV(:,:,i*3+1),[900 1900]);

% matTest(matTest<250)  = 0;

matV(matV<900)  = 0;
matV(matV>1900) = 0;
matBone = matV;
figure();
imgTemp = matBone(:,:,i*3+1);
imshow(matBone(:,:,i*3+1));
hold on;
imgTemp1 = zeros(512,512);
imgTemp2 = zeros(512,512);
imgTemp1(50:200,120:220 ) = imgTemp(50:200,120:220 );
imgTemp1(imgTemp1 <= 0) = inf;
[M,I] = min(imgTemp1(:));
[I_row, I_col] = ind2sub(size(imgTemp1),I);
plot(I_col,I_row,'+','MarkerFaceColor','r','MarkerSize',10);
hold on;
imgTemp2(I_row-50:I_row+50,512-I_col-50:512-I_col+50 ) = imgTemp(I_row-50:I_row+50,512-I_col-50:512-I_col+50 );
imgTemp2(imgTemp2 <= 0) = inf;
[M2,I2] = min(imgTemp2(:));
[I2_row, I2_col] = ind2sub(size(imgTemp2),I2);
plot(I2_col,I2_row,'*','MarkerFaceColor','b','MarkerSize',10);
hold on;
% ptSuture = min(min(imgTemp(120:220,50:200)));
% I = find(imgTemp==min(imgTemp(:)));
% matBoneGrad = gradient(matBone(:,:,i*3+1));



% BW1 = edge(img30,'sobel');
% BW2 = edge(img30,'canny');
% BW3 = edge(matBone(:,:,i*3+1),'canny',[.77 .90]);
% figure;
% imshowpair(BW1,BW2,'montage')
% title('Sobel Filter                                   Canny Filter');
% figure;
% BW4 = imgradient(img30);
% imshow(matBoneGrad);
% imshowpair(matBone(:,:,i*3+1),BW3,'montage')

% BW11 = BW3;
% s  = regionprops(BW11, 'ConvexArea');
% centroids = cat(1, s.Centroid);
% figure;
% imshow(BW11);
% hold on;
% plot(centroids(:,1), centroids(:,2), 'b*');
% hold off;




% for i = 1:30
%     figure;
%     imshow(matBone(:,:,i*3+1));
%     BW1 = edge(matBone(:,:,i*3+1),'sobel');
%     BW2 = edge(matBone(:,:,i*3+1),'canny');
%     figure;
%     imshowpair(BW1,BW2,'montage')
%     title('Sobel Filter                                   Canny Filter');
% end
