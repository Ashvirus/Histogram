# Histogram
Create PDF (Probability Density Function), CDF (Cumulative Distribution Function), and Histogram of an image.

Histogram of an Image is the occurrence of pixels (Intensity). 
Suppose [1,2,1,1,2] is given 1D matrix, then occurrence of 1 is 3 and occurrence of 2 is 2.
    Probability Density Function (PDF) is the probability of that pixel to
    overall image. In this case, PDF(1)=3/5. PDF(2)=2/5. where 5 is total
    number of pixels and addition of PDF(1) and PDF(2) will give 1.
    
    Cumulative Distribution Function (CDF) of any Index is addition of PDF
    till that Index. Here, CDF(1)=PDF(1)=3/5 and CDF(2)=PDF(1)+PDF(2)=1.
    CDF for last index will always be 1.

Stpes to run the code:
1. Open MATLAB and select path, where fn_Histogram.m file is stored.
2. Now give the image name as 'example.jpg'.
3. Run the code and see the result.

