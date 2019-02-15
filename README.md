## Docker images of Java 7/8/9/10/11 provided by Oracle

### Due to DMCA, images have been removed from DockerHub, I will continue to maintain this repo, but you will have to build it by your own, thanks for using!

### Build Images

1. Install [Docker](https://www.docker.com/).

2. Go to `<os>/jdk/`, run `docker build -t <image_name:tag> .`, you can use your favorite image and tag name.

3. Test the image you built, `docker run -it --rm <image_name:tag> java -version`.

### Docker Tags

`sgrio/java-oracle` provides several tagged images:

* Default
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle.svg)](https://microbadger.com/images/sgrio/java-oracle) **latest**: pointed to `sgrio/java-oracle:jdk_11`
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle:latest_ubuntu.svg)](https://microbadger.com/images/sgrio/java-oracle:latest_ubuntu) **latest_ubuntu**: pointed to `sgrio/java-oracle:jdk_11_ubuntu`
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle:latest_centos.svg)](https://microbadger.com/images/sgrio/java-oracle:latest_centos) **latest_centos**: pointed to `sgrio/java-oracle:jdk_11_centos`
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle:latest_alpine.svg)](https://microbadger.com/images/sgrio/java-oracle:latest_alpine) **latest_alpine**: pointed to `sgrio/java-oracle:jdk_11_alpine`
* Java 11
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle:jdk_11.svg)](https://microbadger.com/images/sgrio/java-oracle:jdk_11) **jdk_11**: pointed to `jdk_11_ubuntu`
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle:jdk_11_ubuntu.svg)](https://microbadger.com/images/sgrio/java-oracle:jdk_11_ubuntu) **jdk_11_ubuntu**: `Oracle Java SE Development Kit 11.0.1 build 13` on top of **Ubuntu**
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle:jdk_11_centos.svg)](https://microbadger.com/images/sgrio/java-oracle:jdk_11_centos) **jdk_11_centos**: `Oracle Java SE Development Kit 11.0.1 build 13` on top of **CentOS**
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle:jdk_11_alpine.svg)](https://microbadger.com/images/sgrio/java-oracle:jdk_11_alpine) **jdk_11_alpine**: `Oracle Java SE Development Kit 11.0.1 build 13` on top of **Alpine Linux**
* Java 8
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle:server_jre_8.svg)](https://microbadger.com/images/sgrio/java-oracle:server_jre_8) **server_jre_8**: `Oracle Java SE Server Runtime Environment 8 update 192 build 12` on top of **Ubuntu**
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle:server_jre_8_alpine.svg)](https://microbadger.com/images/sgrio/java-oracle:server_jre_8_alpine) **server_jre_8_alpine**: `Oracle Java SE Server Runtime Environment 8 update 192 build 12` on top of **Alpine Linux**
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle:jre_8.svg)](https://microbadger.com/images/sgrio/java-oracle:jre_8) **jre_8**: `Oracle Java SE Runtime Environment 8 update 192 build 12` on top of **Ubuntu**
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle:jre_8_alpine.svg)](https://microbadger.com/images/sgrio/java-oracle:jre_8_alpine) **jre_8_alpine**: `Oracle Java SE Runtime Environment 8 update 192 build 12` on top of **Alpine Linux**
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle:jdk_8.svg)](https://microbadger.com/images/sgrio/java-oracle:jdk_8) **jdk_8**: `Oracle Java SE Development Kit 8 update 192 build 12` on top of **Ubuntu**
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle:jdk_8_alpine.svg)](https://microbadger.com/images/sgrio/java-oracle:jdk_8_alpine) **jdk_8_alpine**: `Oracle Java SE Development Kit 8 update 192 build 12` on top of **Alpine Linux**

### Docker Tags (Archived)

The following tags are archived:

* Java 10
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle:server_jre_10.svg)](https://microbadger.com/images/sgrio/java-oracle:server_jre_10) `server_jre_10`: based on `Oracle Java SE Server Runtime Environment 10.0.2 build 13`
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle:jre_10.svg)](https://microbadger.com/images/sgrio/java-oracle:jre_10) `jre_10`: based on `Oracle Java SE Runtime Environment 10.0.2 build 13`
  * [![](https://images.microbadger.com/badges/image/sgrio/java-oracle:jdk_10.svg)](https://microbadger.com/images/sgrio/java-oracle:jdk_10) `jdk_10`: based on `Oracle Java SE Development Kit 10.0.2 build 13`
* Java 9
  * `server_jre_9`: based on `Oracle Java SE Server Runtime Environment 9.0.4 build 11`
  * `jre_9`: based on `Oracle Java SE Runtime Environment 9.0.4 build 11`
  * `jdk_9`: based on `Oracle Java SE Development Kit 9.0.4 build 11`
* Java 7
  * `server_jre_7`: based on `Oracle Java SE Server Runtime Environment 7 update 80 build 15`
  * `server_jre_7_unlimited`: based on `Oracle Java SE Server Runtime Environment 7 update 80 build 15` with JCE
  * `jre_7`: based on `Oracle Java SE Runtime Environment 7 update 80 build 15`
  * `jre_7_unlimited`: based on `Oracle Java SE Runtime Environment 7 update 80 build 15` with JCE
  * `jdk_7`: based on `Oracle Java SE Development Kit 7 update 80 build 15`
  * `jdk_7_unlimited`: based on `Oracle Java SE Development Kit 7 update 80 build 15` with JCE

* Java Cryptography Extension (JCE) Unlimited Strength Jurisdiction Policy Files
  * This is enabled by defualt in Java 9, and Java 8 updates later than 162.

