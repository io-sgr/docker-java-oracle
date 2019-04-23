#!/usr/bin/env sh
  
docker pull alpine:latest
docker build -t sgrio/java:jdk_12_alpine alpine/jdk/
docker tag sgrio/java:jdk_12_alpine sgrio/java:latest_alpine

docker pull centos:latest
docker build -t sgrio/java:jdk_12_centos centos/jdk/
docker tag sgrio/java:jdk_12_centos sgrio/java:latest_centos

docker pull ubuntu:latest
docker build -t sgrio/java:jdk_12_ubuntu ubuntu/jdk/
docker tag sgrio/java:jdk_12_ubuntu sgrio/java:latest_ubuntu

docker tag sgrio/java:jdk_12_alpine sgrio/java:jdk_12
docker tag sgrio/java:jdk_12 sgrio/java:latest

docker push sgrio/java:jdk_12_alpine
docker push sgrio/java:latest_alpine

docker push sgrio/java:jdk_12_centos
docker push sgrio/java:latest_centos

docker push sgrio/java:jdk_12_ubuntu
docker push sgrio/java:latest_ubuntu

docker push sgrio/java:jdk_12
docker push sgrio/java:latest

