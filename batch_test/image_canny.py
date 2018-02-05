import sys
import cv2
import numpy as np

s3_url = sys.argv[1]
file_url = s3_url.rsplit('/', 1)[-1]
print( "/shell_script/batch_test/" + file_url)
im = cv2.imread("./shell_script/batch_test/" + file_url)
print(im)
im_gray = cv2.cvtColor(im, cv2.COLOR_BGR2GRAY)
im_canny = cv2.Canny(im_gray,100,200)
save_url = file_url.rsplit('.', 1)[0]  + "_canny." +  file_url.rsplit('.', 1)[1]
cv2.imwrite(save_url,im_canny)
