FROM amazonlinux:2017.03.1.20170812
WORKDIR /code
RUN yum install -y python27-devel python36-devel python35-devel which tar gcc java-1.8.0-openjdk-devel libffi-devel openssl-devel && python3 -m pip install awscli --upgrade --user
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
