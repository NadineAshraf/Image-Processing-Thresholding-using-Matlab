 clc;
 clear all;
 close all;
 % Read the first image
 I=imread('sonnet_for_lena.gif');
 % Adaptive threshold with Gaussian Filter
 img_adapt1=adap_threshold(I,10,0.03,2);
 figure(1);
 subplot(2,2,1);
 imshow(img_adapt1);
 title('Adaptive Thresholding wz Gaussian Image1');
 subplot(2,2,2);
 % Adaptive threshold with Median Filter
 img_adapt2=adap_threshold(I,10,0.03,1);
 imshow(img_adapt2);
 title('Adaptive Thresholding wz Median Image1');
 subplot(2,2,3);
 % 0TSU
 thresh1_ratio =graythresh(I);
 img1_thresh = im2bw(I,thresh1_ratio);
 imshow(img1_thresh);
 title('OTSU Image1');
 subplot(2,2,4);
 % Adaptive threshold Max & Min
 max_min1=adap_threshold(I,10,0.03,3);
 imshow( max_min1);
 title('Max-Min Image1');
 % Read the second image
 Im=imread('wdg3.GIF');
 figure(3);
 subplot(1,2,1);
 imshow(Im);
 title('Original Image');
 figure(2);
 % Adaptive threshold with Gaussian Filter
 img_adapt2=adap_threshold(Im,10,0.03,2);
 subplot(2,2,1);
 imshow(img_adapt2);
 title('Adaptive Thresholding wz Gaussian Image2');
 % Adaptive threshold with Median Filter
 img_adapt2=adap_threshold(Im,10,0.03,1);
 subplot(2,2,2);
 imshow(img_adapt2);
 title('Adaptive Thresholding wz Median Image2');
 % OTSU
 subplot(2,2,3);
 thresh2_ratio =graythresh(Im);
 img2_thresh = im2bw(Im,thresh2_ratio);
 imshow( img2_thresh);
 title('OTSU Image2');
 % Adaptive threshold with Max & Min
 subplot(2,2,4);
 max_min2=adap_threshold(Im,7,0.02,3);
 imshow( max_min2);
 title('Max-Min Image2');
 figure(3);
 subplot(1,2,2);
 % Apply Global thresholding
 t2=globalthreshold(Im,150,0.001);
 t2=t2/255;
 Global_filter2 = im2bw(Im,t2);
 imshow( Global_filter2);
 title('Global thersolding Image2');
 % Apply Single value thresholding
 figure(4);
 subplot(1,1,1);
 single_value = im2bw(Im,0.3);
 imshow( single_value);
 title('Single value thersolding Image2');
 % Apply histogram for both images
 figure(5);
 subplot(1,2,1);
 imhist(I);
 title('Histogram Image1');
 subplot(1,2,2);
 imhist(Im)
 title('Histogram Image2')
