%import images
I= imread('coins.jpg');
subplot(2,3,1),
imshow(I);
title=('Orignal Image');

%Dilated image

se = strel('disk' ,15);
dilate=imdilate(I, se);
subplot(2, 3, 2),
imshow(dilate);
title('Dilated images');

%Eroded images

erode = imerode(I, se);
subplot(2, 3, 3),
imshow(erode);
title('Eroded image');

% Opened Images
open = imopen(I, se);
subplot(2, 3, 4);
imshow(open);
title('Opened Images');

%closed Imeges
close = imclose(I, se);
subplot(2, 3, 5);
imshow(close);
title('Closed Images');