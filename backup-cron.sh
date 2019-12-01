#!/bin/sh
​
HOST=elasticsearch1:9200
SNAPSHOT_NAME=s3-snpahost

TIME=`/bin/date +%d-%m-%Y-%T`

curl -XPUT "http://$HOST/_snapshot/$SNAPSHOT_NAME/$TIME" -d '{}'