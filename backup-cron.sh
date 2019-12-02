#!/bin/sh

echo "Running backup script"
​
HOST=elasticsearch1:9200
SNAPSHOT_NAME=s3-snpahost
SLACK_CHANNEL_WEBHOOK=webhook_url


TIME=`/bin/date +%d-%m-%Y-%T`

curl -XPUT "http://$HOST/_snapshot/$SNAPSHOT_NAME/$TIME" -d '{}'
curl -XPUT $SLACK_CHANNEL_WEBHOOK -d '{"text": "backup made."}'