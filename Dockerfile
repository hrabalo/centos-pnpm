FROM centos:latest

MAINTAINER SED Team, NZX Limited

ENV NODE_VERSION 10

RUN curl --silent --location https://rpm.nodesource.com/setup_$NODE_VERSION.x | bash - && \
    yum -y install wget curl unzip dos2unix rpm-build rpmdevtools git nodejs bsdtar bzip2 freetype-devel fontconfig-devel openssh-clients && \
    yum clean all && \
    npm install -g yarn --no-progress && \ 
    export tar='bsdtar'
