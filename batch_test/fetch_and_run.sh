export FILE_NAME_AF="profile_canny.jpg"
export BATCH_FILE_S3_URL_SRC="s3://mitsu-batch-test/profile.jpg"
export BATCH_FILE_S3_URL_DST="s3://mitsu-batch-test/profile_canny.jpg"

aws s3 cp $BATCH_FILE_S3_URL_SRC .
python ./shell_script/batch_test/image_canny.py $BATCH_FILE_S3_URL_SRC
aws s3 cp $FILE_NAME_AF $BATCH_FILE_S3_URL_DST
