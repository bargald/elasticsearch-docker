#!/bin/sh
​
HOST=elasticsearch1:9200
SNAPSHOT=s3-snpahost

TIME=`/bin/date +%d-%m-%Y-%T`

curl -XPUT "http://$HOST/_snapshot/$SNAPSHOT/$TIME" -d '{}'