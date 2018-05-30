#!/usr/bin/env bash

docker pull ubuntu

docker build -t sgrio/java-oracle:server_jre_10 ./server_jre/ && docker push sgrio/java-oracle:server_jre_10
docker build -t sgrio/java-oracle:jre_10 ./jre/ && docker push sgrio/java-oracle:jre_10
docker build -t sgrio/java-oracle:jdk_10 ./jdk/ && docker push sgrio/java-oracle:jdk_10

docker tag sgrio/java-oracle:server_jre_10 sgrio/java-oracle:latest
docker push sgrio/java-oracle:latest
