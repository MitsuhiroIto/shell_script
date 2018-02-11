export PYTHONPATH=/usr/local/lib/python3.6/site-packages

export FILE_NAME=car.jpg
export FILE_NAME_AF=car_yolo.jpg
export BATCH_FILE_S3_URL_SRC=s3://mitsu-aws-image/static/uploads/car.jpg
export BATCH_FILE_S3_URL_DST=s3://mitsu-aws-image/static/uploads/car_mask.jpg

aws s3 cp $BATCH_FILE_S3_URL_SRC .
python Mask_RCNN/detect_mask_rcnn.py $FILE_NAME
aws s3 cp $FILE_NAME_AF $BATCH_FILE_S3_URL_DST
ls
