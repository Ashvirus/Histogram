% This program is used to perform Histogram, CDF (cummulative distribution function (CDF)) and PDF (probability density function).
% Author : Ashwini Singh-PA 1 Computer Vision
% Input  : flowers.png(RGB image)
% Output : Plot of CDF, PDF and Histogram

function[pixelCounts] =fn_Histogram(filename)
data=imread(filename);                                                          % Read an Image
fontSize = 20;
figure('name','ASHWINI SINGH: Histogram','NumberTitle','off')
gray=rgb2gray(data);                                                            % Convert to gray scale
pixelCounts=zeros(1,256);
for i=0:255
    pixelCounts(1,i+1)=size(gray(gray==i),1);                                   % Histogram (Occurrence of pixels)
end
total_no_pixels=size(gray,1)*size(gray,2);
X_axis=[0:255];
subplot(2,2,1);

plot(X_axis,pixelCounts)
title('Histogram', 'Fontsize', fontSize);
% Computer probability density function:
pdf = pixelCounts ./ total_no_pixels;                                            % PDF of image
subplot(2,2,2);

plot(X_axis,pdf)
title('PDF', 'Fontsize', fontSize);

sum=0;
for i=0:255
    sum=sum+pdf(1,i+1);                                                         % CDF of image
    pdf(1,i+1)=sum;
end
subplot(2,2,3);

plot(X_axis,pdf)
title('CDF', 'Fontsize', fontSize);


end