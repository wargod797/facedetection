webcamlist 
cam = webcam('EasyCamera');
%preview(cam);
cam.resolution='1280x720';
a=snapshot(cam);
%a = imread('face.jpg');
%a = imresize(a,0.25);
detector = vision.CascadeObjectDetector;

detector.MergeThreshold = 5;

bbox = step(detector, a);
videoOut = insertObjectAnnotation(a,'rectangle',bbox,'detection');
imshow(videoOut);
clear('cam');
doc vision.CascadeObjectDetector;