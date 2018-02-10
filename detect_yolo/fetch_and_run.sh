PATH="/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin"

$FILE_NAME = 'car.jpg'
$FILE_NAME_AF = 'car_yolo.jpg'
$BATCH_FILE_S3_URL_SRC = 's3://s3://mitsu-zappa-s3-docker/static/uploads/car.jpg'
$BATCH_FILE_S3_URL_DST = 's3://s3://mitsu-zappa-s3-docker/static/uploads/car_yolo.jpg'

aws s3 cp $BATCH_FILE_S3_URL_SRC .
python YAD2K/detect_yolo_under.py $FILE_NAME
aws s3 cp $FILE_NAME_AF $BATCH_FILE_S3_URL_DST
ls
