
% PD4 is the participants image -- 500 x 500 jpeg RGB -- imports as uint8
% want both gray logicals so convert PD4 to gray and logic


%On Eliza's computer 
%folder_base = '/Users/cocosci/Desktop/H_All/Base Letters';
%folder_part = '/Users/cocosci/Desktop/H_All/Part_1';

folder_base = 'Base_Letters';
folder_part = 'Part_1';

img_base = imread([folder_base,'/','D1.png']);
img_part = imread([folder_part,'/','Part_1_D4.jpeg']);

% resize and convert to grayscale
img_base = double(img_base);
img_part = rgb2gray(img_part);
img_part = imresize(img_part,size(img_base));

% make maximum value in both images be 1
img_part = img_part ./ max(img_part(:));
img_base = img_base ./ max(img_base(:));

% convert to binary
img_part = img_part < 0.5;
img_base = img_base < 0.5;

% compute distance
d = HD(img_base,img_part);





