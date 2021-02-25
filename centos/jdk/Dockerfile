FROM centos:latest
MAINTAINER SgrAlpha <admin@mail.sgr.io>

ENV DEBIAN_FRONTEND=noninteractive \
    JAVA_HOME=/usr/lib/jvm/java-15-oracle

RUN \
    JAVA_VERSION=15.0.2 && \
    JAVA_BUILD=7 && \
    JAVA_SIG=0d1cfde4252546c6931946de8db48ee2 && \
    yum -y update && \
    curl --silent --location --retry 3 \
        --header "Cookie: oraclelicense=accept-securebackup-cookie;" \
        http://download.oracle.com/otn-pub/java/jdk/"${JAVA_VERSION}"+"${JAVA_BUILD}"/"${JAVA_SIG}"/jdk-"${JAVA_VERSION}"_linux-x64_bin.tar.gz \
        | tar xz -C /tmp && \
    mkdir -p /usr/lib/jvm && mv /tmp/jdk-"${JAVA_VERSION}" "${JAVA_HOME}" && \
    yum clean all && \
    rm -rf /tmp/* /var/cache/yum/* /var/tmp/* && \
    update-alternatives --install "/usr/bin/java" "java" "${JAVA_HOME}/bin/java" 1 && \
    update-alternatives --install "/usr/bin/javac" "javac" "${JAVA_HOME}/bin/javac" 1 && \
    update-alternatives --set java "${JAVA_HOME}/bin/java" && \
    update-alternatives --set javac "${JAVA_HOME}/bin/javac"
