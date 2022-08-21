function [TP,FP,TN,FN] = compareBinaryImages( reference, toTest )
 %   reference = image binaire binary image
 %   toTest = image binaire a comparer avec l'image de reference
 if(ndims(reference)~=2 && ndims(toTest)~=2) 
        error('Inputs must be two 2-dimensional matrices'); 
 end
 TP = nnz(reference==1 & toTest==1); % True positive
 FP = nnz(reference==0 & toTest==1); % False positive
 TN = nnz(reference==0 & toTest==0); % True negative
 FN = nnz(reference==1 & toTest==0); % False negative
end