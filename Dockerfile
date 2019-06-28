FROM registry.centos.org/centos:latest

ENV NODE_VERSION 10

RUN curl --silent --location https://rpm.nodesource.com/setup_$NODE_VERSION.x | bash - && \
    yum -y install wget curl unzip dos2unix rpm-build rpmdevtools git nodejs bzip2 freetype-devel fontconfig-devel openssh-clients epel-release https://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
    yum-config-manager --enable remi && \
    yum -y install vips vips-devel make gcc-c++.x86_64 && \
    yum clean all && \
    npm install -g yarn --no-progress
