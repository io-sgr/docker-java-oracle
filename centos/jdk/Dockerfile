FROM centos:latest
MAINTAINER SgrAlpha <admin@mail.sgr.io>

ENV DEBIAN_FRONTEND=noninteractive \
    JAVA_HOME=/usr/lib/jvm/java-11-oracle

RUN VERSION=12.0.1 && \
    BUILD=12 && \
    SIG=69cfe15208a647278a19ef0990eea691 && \
    yum -y update && \
    curl --silent --location --retry 3 \
        --header "Cookie: oraclelicense=accept-securebackup-cookie;" \
        http://download.oracle.com/otn-pub/java/jdk/"${VERSION}"+"${BUILD}"/"${SIG}"/jdk-"${VERSION}"_linux-x64_bin.tar.gz \
        | tar xz -C /tmp && \
    mkdir -p /usr/lib/jvm && mv /tmp/jdk-${VERSION} "${JAVA_HOME}" && \
    yum clean all && \
    rm -rf /tmp/* /var/cache/yum/* /var/tmp/* && \
    update-alternatives --install "/usr/bin/java" "java" "${JAVA_HOME}/bin/java" 1 && \
    update-alternatives --install "/usr/bin/javac" "javac" "${JAVA_HOME}/bin/javac" 1 && \
    update-alternatives --set java "${JAVA_HOME}/bin/java" && \
    update-alternatives --set javac "${JAVA_HOME}/bin/javac"
