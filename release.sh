#!/usr/bin/env bash

export WORKSPACE_DIR=`pwd`

docker pull ubuntu
cd ${WORKSPACE_DIR}/server_jre && docker build -t sgrio/java-oracle:server_jre_8 . && docker push sgrio/java-oracle:server_jre_8
cd ${WORKSPACE_DIR}/jre && docker build -t sgrio/java-oracle:jre_8 . && docker push sgrio/java-oracle:jre_8
cd ${WORKSPACE_DIR}/jdk && docker build -t sgrio/java-oracle:jdk_8 . && docker push sgrio/java-oracle:jdk_8
