FROM sgrio/java-oracle:jre_7
MAINTAINER SgrAlpha <admin@mail.sgr.io>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
	apt-get install unzip -y --no-install-recommends && \
	curl --silent --location --retry 3 --cacert /etc/ssl/certs/GeoTrust_Global_CA.pem \
	--header "Cookie: oraclelicense=accept-securebackup-cookie;" \
	http://download.oracle.com/otn-pub/java/jce/7/UnlimitedJCEPolicyJDK7.zip -o /tmp/UnlimitedJCEPolicyJDK7.zip && \
	unzip /tmp/UnlimitedJCEPolicyJDK7.zip -d /tmp && \
	cp -v /tmp/UnlimitedJCEPolicy/*.jar "${JRE_HOME}"/lib/security/ && \
	apt-get remove --purge --auto-remove -y unzip && \
	apt-get autoclean && apt-get --purge -y autoremove && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
