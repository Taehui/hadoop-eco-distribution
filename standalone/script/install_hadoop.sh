#!/bin/bash

# 설치파일 관리용 다운로드 디렉토리 생성
mkdir ~/downloads && cd ~/downloads

# hadoop 3.2.3 설치
wget https://dlcdn.apache.org/hadoop/common/hadoop-3.2.3/hadoop-3.2.3.tar.gz

# hadoop 3.2.3 압축 해제
sudo tar -zxvf hadoop-3.2.3.tar.gz -C /usr/local

# hadoop 소유권 변경
sudo chown -R $USER:$USER /usr/local/hadoop-3.2.3

# hadoop 심볼릭 링크 생성
cd /usr/local && sudo ln -s hadoop-3.2.3 hadoop

# 설정파일 복사
cp -r ~/hadoop-eco-installation/standalone/configuration/hadoop/conf/* /usr/local/hadoop/etc/hadoop

source /etc/environment
source ~/.bashrc


