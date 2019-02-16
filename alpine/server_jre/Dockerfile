FROM alpine:latest
MAINTAINER SgrAlpha <admin@mail.sgr.io>

ENV JAVA_HOME=/usr/lib/jvm/java-8-oracle \
    JRE_HOME=/usr/lib/jvm/java-8-oracle/jre \
    PATH="/usr/lib/jvm/java-8-oracle/bin:$PATH"

RUN GLIBC_VERSION=2.28-r0 && \
    GCC_LIBS_VERSION=8.2.0-2 && \
    ZLIB_VERSION=1.2.9-1 && \
    JAVA_VERSION=8 && \
    JAVA_UPDATE=202 && \
    JAVA_BUILD=08 && \
    JAVA_SIG=1961070e4c9b4e26a04e7f5a083f551e && \
    apk --update add --no-cache ca-certificates curl openssl binutils xz && \
    curl -Ls https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub && \
    curl -Ls https://github.com/sgerrand/alpine-pkg-glibc/releases/download/"${GLIBC_VERSION}"/glibc-"${GLIBC_VERSION}".apk \
        -o /tmp/glibc-"${GLIBC_VERSION}".apk && \
    apk add /tmp/glibc-"${GLIBC_VERSION}".apk && \
    mkdir /tmp/gcc-libs && \
    curl -Ls https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-"${GCC_LIBS_VERSION}"-x86_64.pkg.tar.xz \
        | tar -xJ -C /tmp/gcc-libs && \
    mv /tmp/gcc-libs/usr/lib/libgcc* /tmp/gcc-libs/usr/lib/libstdc++* /usr/glibc-compat/lib && \
    strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so* && \
    mkdir /tmp/zlib && \
    curl -Ls https://archive.archlinux.org/packages/z/zlib/zlib-1%3A"${ZLIB_VERSION}"-x86_64.pkg.tar.xz \
        | tar -xJ -C /tmp/zlib && \
    mv /tmp/zlib/usr/lib/libz.so* /usr/glibc-compat/lib && \
    apk del binutils && \
    curl -Ls --header "Cookie: oraclelicense=accept-securebackup-cookie;" \
        http://download.oracle.com/otn-pub/java/jdk/"${JAVA_VERSION}"u"${JAVA_UPDATE}"-b"${JAVA_BUILD}"/"${JAVA_SIG}"/server-jre-"${JAVA_VERSION}"u"${JAVA_UPDATE}"-linux-x64.tar.gz \
        | tar xz -C /tmp && \
    mkdir -p /usr/lib/jvm && mv /tmp/jdk1.${JAVA_VERSION}.0_${JAVA_UPDATE} "${JAVA_HOME}" && \
    rm -rf /tmp/* /var/cache/apk/*

