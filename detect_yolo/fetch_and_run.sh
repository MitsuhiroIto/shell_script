export PYTHONPATH=/usr/local/lib/python3.6/site-packages

aws s3 cp $BATCH_FILE_S3_URL_SRC .
python YAD2K/detect_yolo_under.py $FILE_NAME
aws s3 cp $FILE_NAME_AF $BATCH_FILE_S3_URL_DST
ls
