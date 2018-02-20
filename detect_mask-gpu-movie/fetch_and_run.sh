export PYTHONPATH=/usr/local/lib/python3.6/site-packages

aws s3 cp $BATCH_FILE_S3_URL_SRC .
python Mask_RCNN/detect_mask_rcnn_movie.py $FILE_NAME
aws s3 cp $FILE_NAME_AF $BATCH_FILE_S3_URL_DST
ls
