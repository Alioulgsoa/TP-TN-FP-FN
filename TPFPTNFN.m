% TP,FP,TN,FN

clc
clear all
close all

% l'image de la segmentation de ref
S1= niftiread('brainweb_b3n1_seg_SB.nii');
A=double(S1(:,:,95));
figure ;
imshow(A);
% l'image segmenter par un algorithme
S2= double(niftiread('t1_000_mask_seg_SB.nii'));
%ajouter juste pour spm
S2 = double(imbinarize(S2,0.5));

B=double(S2(:,:,95));
figure ;
imshow(B);
% la fonction compareBinaryImages permet de calculer les TP TN FP FP entre
% deux segmentation
[TP,FP,TN,FN] = compareBinaryImages( A, B )