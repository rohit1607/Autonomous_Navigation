import cv2
import numpy as np
import matplotlib.pyplot as plt
import os
import time

img = cv2.imread('blob_test.png', 1)
hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
global enter 
enter = False

red_lower = np.array([160, 100, 100])
red_upper = np.array([179, 255, 255])

#green_lower = np.array([30, 100, 100])
#green_upper = np.array([90, 255, 255])

#blue_lower = np.array([90, 100, 100])
#blue_upper = np.array([150, 255, 255])

red_mask = cv2.inRange(hsv, red_lower, red_upper)
#green_mask = cv2.inRange(hsv, green_lower, green_upper)
#blue_mask = cv2.inRange(hsv, blue_lower, blue_upper)

red_img = cv2.bitwise_and(img, img, mask=red_mask)
#green_img = cv2.bitwise_and(img, img, mask=green_mask)
#blue_img = cv2.bitwise_and(img, img, mask=blue_mask)

# contours -> max area -> centroid
# can use multiple blobs centers to align - see with 2 circles or best 2 rectangles
# detect blob -> if max area > 10 then move forward
# contours, hierarchy = cv.findContours(thresh, cv.RETR_TREE, cv.CHAIN_APPROX_SIMPLE)

def get_center(blob):
	M = cv2.moments(blob)
	center = np.array([int(M["m10"] / M["m00"]), int(M["m01"] / M["m00"])])
	return center

_, contours, _ = cv2.findContours(red_mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_NONE)
#blob = max(contours, key=lambda el: cv2.contourArea(el))
blobs = [contour for contour in contours if cv2.contourArea(contour)>5]
centers = []
areas = []
for blob in blobs:
	center = get_center(blob)
	centers.append(center)
	areas.append(cv2.contourArea(blob))
if max(areas)> 10:
	enter = True
print(enter)
# centroid = [sum(area*c)/sum(areas) for area, c in zip(areas, centers)] 
# center = get_center(blob)
# canvas = red_mask.copy()
# cv2.circle(canvas, (center[0], center[1]), 2, (0,0,255), -1)
# cv2.imshow('canvas',canvas)

# detect blobs -> find center
# not needed
# detector = cv2.SimpleBlobDetector_create()
# keypoints = detector.detect(red_mask)
# im_with_keypoints = cv2.drawKeypoints(red_mask, keypoints, np.array([]), (0,0,255), cv2.DRAW_MATCHES_FLAGS_DRAW_RICH_KEYPOINTS)
# moment_img = cv2.moments(red_mask)
# red_x = int(moment_img["m10"]/moment_img["m00"])
# red_y = int(moment_img["m01"]/moment_img["m00"])



#cv2.circle(red_img, (red_x, red_y), 5, (255, 255, 255), -1)
#cv2.putText(red_img, "centroid", (red_x - 25, red_y - 25), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), 2)

# plt.figure()
# plt.imshow(img)

# plt.figure()
# plt.imshow(red_img)

# plt.figure()
# plt.imshow(green_img)

# plt.figure()
# plt.imshow(blue_img)

# plt.show()

cv2.imshow('img',img)	
cv2.imshow('red_mask',red_mask)
cv2.imshow('red_img',red_img)

# cv2.imshow('green_mask',green_mask)
# cv2.imshow('green_img',green_img)

# cv2.imshow('blue_mask',blue_mask)
# cv2.imshow('blue_img',blue_img)


k = cv2.waitKey(0) 
if k == 0:
    cv2.destroyAllWindows()
    cv2.release()