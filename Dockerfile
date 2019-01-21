FROM cllunsford/aws-signing-proxy:latest as s3_proxy
FROM amazonlinux:2017.03.1.20170812
WORKDIR /code
RUN yum install -y jq python27-devel python36-devel python35-devel which tar gcc java-1.8.0-openjdk-devel libffi-devel openssl-devel git && python3 -m pip install awscli aws-sam-cli pip --upgrade --user
COPY hub-linux-amd64-2.7.0 /usr/bin/hub
COPY --from=s3_proxy /aws-signing-proxy /aws-signing-proxy
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
