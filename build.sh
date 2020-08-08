#!/usr/bin/env sh

docker pull sgrio/java:latest
docker pull sgrio/java:jdk_14
docker pull sgrio/java:latest_alpine
docker pull sgrio/java:jdk_14_alpine
docker pull sgrio/java:latest_centos
docker pull sgrio/java:jdk_14_centos
docker pull sgrio/java:latest_ubuntu
docker pull sgrio/java:jdk_14_ubuntu

docker pull alpine:latest
docker build -t sgrio/java:jdk_14_alpine alpine/jdk/
docker tag sgrio/java:jdk_14_alpine sgrio/java:latest_alpine

docker pull centos:latest
docker build -t sgrio/java:jdk_14_centos centos/jdk/
docker tag sgrio/java:jdk_14_centos sgrio/java:latest_centos

docker pull ubuntu:latest
docker build -t sgrio/java:jdk_14_ubuntu ubuntu/jdk/
docker tag sgrio/java:jdk_14_ubuntu sgrio/java:latest_ubuntu

docker tag sgrio/java:jdk_14_alpine sgrio/java:jdk_14
docker tag sgrio/java:jdk_14 sgrio/java:latest

docker push sgrio/java:jdk_14_alpine
docker push sgrio/java:latest_alpine

docker push sgrio/java:jdk_14_centos
docker push sgrio/java:latest_centos

docker push sgrio/java:jdk_14_ubuntu
docker push sgrio/java:latest_ubuntu

docker push sgrio/java:jdk_14
docker push sgrio/java:latest

