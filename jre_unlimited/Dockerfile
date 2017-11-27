FROM sgrio/java-oracle:jre_8
MAINTAINER SgrAlpha <admin@mail.sgr.io>

ENV DEBIAN_FRONTEND noninteractive

RUN sed -i 's/#crypto.policy=unlimited/crypto.policy=unlimited/g' "${JRE_HOME}"/lib/security/java.security
