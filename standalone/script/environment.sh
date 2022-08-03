#!/bin/bash

# /etc/environment.sh
sudo cp ~/hadoop-eco-distribution/standalone/configuration/etc/environment /etc
source /etc/environment

# JAVA
sudo echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> ~/.bashrc

# Hadoop
sudo echo 'export HADOOP_HOME=/usr/local/hadoop' >> ~/.bashrc
sudo echo 'export HADOOP_COMMON_HOME=$HADOOP_HOME' >> ~/.bashrc
sudo echo 'export HADOOP_HDFS_HOME=$HADOOP_HOME' >> ~/.bashrc
sudo echo 'export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop' >> ~/.bashrc
sudo echo 'export HADOOP_YARN_HOME=$HADOOP_HOME' >> ~/.bashrc
sudo echo 'export HADOOP_MAPRED_HOME=$HADOOP_HOME' >> ~/.bashrc

# Hive
sudo echo 'export HIVE_HOME=/usr/local/hive' >> ~/.bashrc

# Spark
sudo echo 'export SPARK_HOME=/usr/local/spark' >> ~/.bashrc

# Python & PySpark
sudo echo 'export PYTHONPATH=/usr/bin/python3' >> ~/.bashrc
sudo echo 'export PYSPARK_PYTHON=/usr/bin/python3' >> ~/.bashrc

# Zeppelin
sudo echo 'export ZEPPELIN_HOME=/usr/local/zeppelin' >> ~/.bashrc


# 적용
source ~/.bashrc


