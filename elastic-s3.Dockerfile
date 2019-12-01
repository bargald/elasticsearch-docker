FROM docker.elastic.co/elasticsearch/elasticsearch:7.4.2

USER elasticsearch

RUN elasticsearch-plugin install --batch repository-s3

RUN elasticsearch-keystore create

ADD ./access_key ./access_key
ADD ./secret_key ./secret_key
RUN elasticsearch-keystore add-file s3.client.default.access_key ./access_key
RUN elasticsearch-keystore add-file s3.client.default.secret_key ./secret_key