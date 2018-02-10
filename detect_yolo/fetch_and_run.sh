export FILE_NAME=car.jpg
export FILE_NAME_AF=car_yolo.jpg
export BATCH_FILE_S3_URL_SRC=s3://mitsu-aws-image/static/uploads/car.jpg
export BATCH_FILE_S3_URL_DST=s3://mitsu-aws-image/static/uploads/car_yolo.jpg
#pip install numpy

export PYTHONPATH=/usr/local/lib/python3.6/site-packages

aws s3 cp $BATCH_FILE_S3_URL_SRC .
python YAD2K/detect_yolo_under.py $FILE_NAME
aws s3 cp $FILE_NAME_AF $BATCH_FILE_S3_URL_DST
ls
