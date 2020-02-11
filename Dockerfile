FROM ubuntu:18.04

ENV REPO_URL='https://mirrors.tuna.tsinghua.edu.cn/git/git-repo'

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
COPY sources.list /etc/apt/

RUN apt-get update
RUN apt-get install -y curl openjdk-8-jdk python git gpg
RUN mkdir /root/bin \
    &&curl https://storage.googleapis.com/git-repo-downloads/repo > /root/bin/repo \
    &&chmod a+x /root/bin/repo

ENV PATH=/root/bin:$PATH
