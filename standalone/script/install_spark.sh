#!/bin/bash

# 설치파일 관리용 다운로드 디렉토리 이동
cd ~/downloads

# spark 3.2.1 다운로드
wget https://archive.apache.org/dist/spark/spark-3.2.1/spark-3.2.1-bin-hadoop3.2.tgz

# spark 3.2.1 압축 해제
sudo tar -xzvf spark-3.2.1-bin-hadoop3.2.tgz -C /usr/local/

# spark 소유권 변경
sudo chown -R $USER:$USER /usr/local/spark-3.2.1-bin-hadoop3.2

# spark 심볼릭링크 생성
cd /usr/local && sudo ln -s /usr/local/spark-3.2.1-bin-hadoop3.2 spark

# Python 설치
sudo apt-get install -y python3-pip

# Python 버전 확인
python3 -V

# PySpark 설치
sudo pip3 install pyspark findspark

# 설정파일 복사
cp -r ../configuration/spark/conf/* /usr/local/spark/conf
