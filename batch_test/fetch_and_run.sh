PATH="/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin"

echo "test"
echo "${BATCH_FILE_S3_URL_SRC}"
echo "finish"
aws s3 cp "${BATCH_FILE_S3_URL_SRC}" .
ls
python ./shell_script/batch_test/image_canny.py $BATCH_FILE_S3_URL_SRC
aws s3 cp $FILE_NAME_AF $BATCH_FILE_S3_URL_DST
ls
