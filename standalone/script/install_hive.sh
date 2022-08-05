#!/bin/bash

# 설치파일 관리용 디렉토리 이동
cd ~/downloads

# hive 3.1.3 다운로드
wget https://downloads.apache.org/hive/hive-3.1.2/apache-hive-3.1.2-bin.tar.gz

# hive 압축 해제
sudo tar xvfz apache-hive-3.1.2-bin.tar.gz -C /usr/local/

# hive 소유권 변경
sudo chown -R $USER:$USER /usr/local/apache-hive-3.1.2-bin

# hive 심볼릭 링크 생성
cd /usr/local && sudo ln -s apache-hive-3.1.2-bin hive


cd ~/downloads

# mysql connector 다운로드
wget http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.27.tar.gz

# 압축풀기
tar xvfz mysql-connector-java-5.1.27.tar.gz

# 하이브 lib 디렉토리로 jar 파일 복사
cp mysql-connector-java-5.1.27/*.jar /usr/local/hive/lib


source /etc/environment
source ~/.bashrc


cd ~/downloads
wget http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.27.tar.gz
tar xvfz mysql-connector-java-5.1.27.tar.gz
cp mysql-connector-java-5.1.27/*.jar $HIVE_HOME/lib

rm $HIVE_HOME/lib/guava-19.0.jar
cp $HADOOP_HOME/share/hadoop/hdfs/lib/guava-27.0-jre.jar $HIVE_HOME/lib/


cp -r ~/hadoop-eco-installation/standalone/configuration/hive/conf/* /usr/local/hive/conf

