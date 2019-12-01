FROM ubuntu:latest

RUN apt-get update && apt-get -y install cron && apt-get -y install curl

ADD backup-cron.sh cron.sh

COPY cron-job /etc/cron.d/cron-job

RUN chmod +x /etc/cron.d/cron-job
RUN chmod +x cron.sh

RUN crontab /etc/cron.d/cron-job

CMD ["cron", "-f"]