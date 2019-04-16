a = imread('darsh.jpg');
%a = imresize(a,0.25);
detector = vision.CascadeObjectDetector;

detector.MergeThreshold = 5;

bbox = step(detector, a);
videoOut = insertObjectAnnotation(a,'rectangle',bbox,'detection');
imshow(videoOut);