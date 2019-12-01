FROM ubuntu:latest

RUN apt-get update && apt-get -y install cron && apt-get -y install curl

COPY cron-job /etc/cron.d/cron-job

RUN chmod 0644 /etc/cron.d/cron-job

RUN crontab /etc/cron.d/cron-job

CMD ["cron", "-f"]