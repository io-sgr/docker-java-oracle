FROM ubuntu:latest
MAINTAINER SgrAlpha <admin@mail.sgr.io>

ENV DEBIAN_FRONTEND noninteractive \
    VERSION 10.0.1 \
    BUILD 10 \
    SIG fb4372174a714e6b8c52526dc134031e \
    JAVA_HOME /usr/lib/jvm/java-${VERSION}-oracle

RUN apt-get update && apt-get dist-upgrade -y && \
	apt-get install apt-utils ca-certificates curl -y --no-install-recommends && \
	curl --silent --location --retry 3 --cacert /etc/ssl/certs/GeoTrust_Global_CA.pem \
	    --header "Cookie: oraclelicense=accept-securebackup-cookie;" \
	    http://download.oracle.com/otn-pub/java/jdk/"${VERSION}"+"${BUILD}"/"${SIG}"/jdk-"${VERSION}"_linux-x64_bin.tar.gz \
	    | tar xz -C /tmp && \
	mkdir -p /usr/lib/jvm && mv /tmp/jdk-${VERSION} "${JAVA_HOME}" && \
	apt-get autoclean && apt-get --purge -y autoremove && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
	update-alternatives --install "/usr/bin/java" "java" "${JAVA_HOME}/bin/java" 1 && \
	update-alternatives --install "/usr/bin/javaws" "javaws" "${JAVA_HOME}/bin/javaws" 1 && \
	update-alternatives --install "/usr/bin/javac" "javac" "${JAVA_HOME}/bin/javac" 1 && \
	update-alternatives --set java "${JAVA_HOME}/bin/java" && \
	update-alternatives --set javaws "${JAVA_HOME}/bin/javaws" && \
	update-alternatives --set javac "${JAVA_HOME}/bin/javac"
