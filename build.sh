#!/usr/bin/env sh

docker pull sgrio/java:latest
docker pull sgrio/java:jdk_13
docker pull sgrio/java:latest_alpine
docker pull sgrio/java:jdk_13_alpine
docker pull sgrio/java:latest_centos
docker pull sgrio/java:jdk_13_centos
docker pull sgrio/java:latest_ubuntu
docker pull sgrio/java:jdk_13_ubuntu

docker pull alpine:latest
docker build -t sgrio/java:jdk_13_alpine alpine/jdk/
docker tag sgrio/java:jdk_13_alpine sgrio/java:latest_alpine

docker pull centos:latest
docker build -t sgrio/java:jdk_13_centos centos/jdk/
docker tag sgrio/java:jdk_13_centos sgrio/java:latest_centos

docker pull ubuntu:latest
docker build -t sgrio/java:jdk_13_ubuntu ubuntu/jdk/
docker tag sgrio/java:jdk_13_ubuntu sgrio/java:latest_ubuntu

docker tag sgrio/java:jdk_13_alpine sgrio/java:jdk_13
docker tag sgrio/java:jdk_13 sgrio/java:latest

docker push sgrio/java:jdk_13_alpine
docker push sgrio/java:latest_alpine

docker push sgrio/java:jdk_13_centos
docker push sgrio/java:latest_centos

docker push sgrio/java:jdk_13_ubuntu
docker push sgrio/java:latest_ubuntu

docker push sgrio/java:jdk_13
docker push sgrio/java:latest

