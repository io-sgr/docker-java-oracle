#!/usr/bin/env sh
  
docker pull alpine:latest
docker build -t sgrio/java:jdk_11_alpine alpine/jdk/
docker tag sgrio/java:jdk_11_alpine sgrio/java:latest_alpine

docker pull centos:latest
docker build -t sgrio/java:jdk_11_centos centos/jdk/
docker tag sgrio/java:jdk_11_centos sgrio/java:latest_centos

docker pull centos:latest
docker build -t sgrio/java:jdk_11_ubuntu ubuntu/jdk/
docker tag sgrio/java:jdk_11_ubuntu sgrio/java:latest_ubuntu

docker tag sgrio/java:jdk_11_alpine sgrio/java:jdk_11
docker tag sgrio/java:jdk_11 sgrio/java:latest

docker push sgrio/java:jdk_11_alpine
docker push sgrio/java:latest_alpine

docker push sgrio/java:jdk_11_centos
docker push sgrio/java:latest_centos

docker push sgrio/java:jdk_11_ubuntu
docker push sgrio/java:latest_ubuntu

docker push sgrio/java:jdk_11
docker push sgrio/java:latest

