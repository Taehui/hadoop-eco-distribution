#!/bin/bash

# 설치파일 관리용 다운로드 디렉토리 이동
cd ~/downloads

# Zeppelin 다운로드
wget https://dlcdn.apache.org/zeppelin/zeppelin-0.10.1/zeppelin-0.10.1-bin-all.tgz

# Zeppelin 압축 해제
sudo tar -zxvf zeppelin-0.10.1-bin-all.tgz -C /usr/local/

# zeppelin 심볼릭링크 생성
cd /usr/local && sudo ln -s /usr/local/zeppelin-0.10.1-bin-all/ zeppelin

# Zeppelin 디렉토리 소유자 변경
sudo chown -R $USER:$USER /usr/local/zeppelin-0.10.1-bin-all/

source /etc/environment
source ~/.bashrc


# 설정파일 복사
cp -r ~/hadoop-eco-installation/standalone/configuration/zeppelin/conf/* /usr/local/zeppelin/conf


cd /usr/local/zeppelin/interpreter/jdbc/
wget https://repo.maven.apache.org/maven2/org/apache/hive/hive-jdbc/1.2.1/hive-jdbc-1.2.1.jar
cp /usr/local/hadoop/share/hadoop/common/hadoop-common-3.2.3.jar /usr/local/zeppelin/interpreter/jdbc

