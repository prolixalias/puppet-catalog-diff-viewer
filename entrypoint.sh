#!/bin/sh

if test -n "$S3_BUCKET" ; then
  cat << EOF > /usr/share/nginx/html/catalog_diff/s3_credentials.js
var s3_bucketName = '${S3_BUCKET}';
var s3_access_key = '${S3_ACCESS_KEY}';
var s3_secret_key = '${S3_SECRET_KEY}';
EOF
fi

exec "$@"
