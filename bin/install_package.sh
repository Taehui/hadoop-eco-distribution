#!/bin/bash

# 설치 가능한 리스트 업데이트
sudo apt-get -y update

# 업데이트한 패키지들을 최신 버전에 맞게 업그레이드
sudo apt-get -y upgrade

# 의존성까지 체크해서 업그레이드
sudo apt-get -y dist-upgrade

# 필요 라이브러리 설치
sudo apt-get install -y vim wget unzip ssh openssh-* net-tools tree

# Ubuntu 20.4 에는 native libray 인 snappy 가 설치되어 있지 않다.
# 아래 snappy 설치를 하지 않으면 하둡 설치 후 snappy 사용 시 에러가 발생한다.
sudo apt install libsnappy-dev -y

# Java 8 설치
sudo apt-get install -y openjdk-8-jdk
