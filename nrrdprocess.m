% load volume data
% clc; 
% clear;
% load volume_image.mat;
% %% visualize skull density from 700 to 3000
% for i = 1 : 20
%     figure();
%     imshow(vol1(:,:,i*5+1),[700,3000]);
% end

% %% visualize ventricles from -5 to 5
% for i = 1 : 20
%     figure();
%     imshow(vol1(:,:,i*5+1),[-5,5]);
% end

%  matVolume = vol1;
 matVolume = volume_image;


% initial Bone and Ventricle mat
matBone = zeros(512,512,120);
matVen = zeros(512,512,120);
pcBone = ones(1,3);
pcBoneSurf = ones(1,3);
pcVen = ones(1,3);
cntBone = 0;
cntVen = 0;

% filter by density bone = 950~1900, ventricles -15 to 15
for i = 1:512
    for j = 1:512
        for k = 1:120
            if matVolume(i,j,k) >950 && matVolume(i,j,k) < 1950
                matBone(i,j,k) = 1;
                cntBone = cntBone + 1;
%                 if cntBone == 1
%                     pcBone = [i j k];
% %                     pcBoneSurf = [i j k];
% %                     break;  % break to get skull surface 
%                 else
%                     pcBone = [pcBone ; i j k];
% %                     pcBoneSurf = [pcBoneSurf ; i j k];
% %                     break;  % break to get skull surface 
%                 end
            elseif matVolume(i,j,k) > -50 && matVolume(i,j,k) < 50
                matVen(i,j,k) = 1;
                cntVen = cntVen + 1;
                if cntVen == 1
                    pcVen = [i j k];
                else
                    pcVen = [pcVen ; i j k];
                end
            end
        end
    end
end
 
% % visualize bone and ventricle
% pcshow(pcBoneSurf);
% pcshow(pcVen);

% overlap volume calculation
% [mat1, mat2] = maxOverlapVolume(mat1, mat2)

% for i = 1:512
%     for j = 1:512
%         for k = 1:120
%             if matBone(i,j,k) == 1
%                 for ii = 1:512
%                     for jj = 1:512
%                         for kk = 1:120
%                             if matVentricle(ii,jj,kk) == 1
%                                 if boolInCone(matBone(i,j,k),matVentricle(ii,jj,kk)) == 1
%                                     count = count + 1;
%                                 end
%                             end
%                         end
%                     end
%                 end
%             end
%         end
%     end
% end



