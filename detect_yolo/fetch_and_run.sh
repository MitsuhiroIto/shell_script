export FILE_NAME=car.jpg
export FILE_NAME_AF=car_yolo.jpg
export BATCH_FILE_S3_URL_SRC=s3://mitsu-aws-image/static/uploads/car.jpg
export BATCH_FILE_S3_URL_DST=s3://mitsu-aws-image/static/uploads/car_yolo.jpg

aws s3 cp $BATCH_FILE_S3_URL_SRC .
