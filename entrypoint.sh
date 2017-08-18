#!/bin/sh
if [ "x${BUCKETS}" != "x" ]; then
    echo "Creating buckets: ${BUCKETS}"
    for bucket in ${BUCKETS}; do
        mkdir -p "/data/${bucket}"
    done
fi
cd /srv
exec $(npm bin)/s3rver -d /data -h 0.0.0.0 -p 10001
