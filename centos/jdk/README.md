## Customized Docker images of Java 8/11/14

### Branches

* Active branches:
  * `master` - Latest Java, currently version 14.0.2
* Inactive branches:
  * `java11` - Java 11
  * `java8` - Java 8
* Deprecated:
  * `java13`
  * `java12`
  * `java10`
  * `java9`
  * `java7`

### Build Images

1. Install [Docker](https://www.docker.com/).

2. Run `docker build -t <image_name:tag> ./<os>/jdk/`, you can also use your favorite image and tag name.

3. Test the image you built, `docker run -it --rm <image_name:tag> java -version`.

### Docker Tags

`sgrio/java` provides several tagged images:

* Default
  * [![](https://images.microbadger.com/badges/image/sgrio/java.svg)](https://microbadger.com/images/sgrio/java) **latest**: pointed to `sgrio/java:latest_alpine`
  * [![](https://images.microbadger.com/badges/image/sgrio/java:latest_alpine.svg)](https://microbadger.com/images/sgrio/java:latest_alpine) **latest_alpine**: pointed to `sgrio/java:jdk_14_alpine`
  * [![](https://images.microbadger.com/badges/image/sgrio/java:latest_centos.svg)](https://microbadger.com/images/sgrio/java:latest_centos) **latest_centos**: pointed to `sgrio/java:jdk_14_centos`
  * [![](https://images.microbadger.com/badges/image/sgrio/java:latest_ubuntu.svg)](https://microbadger.com/images/sgrio/java:latest_ubuntu) **latest_ubuntu**: pointed to `sgrio/java:jdk_14_ubuntu`
* Java 14
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_14.svg)](https://microbadger.com/images/sgrio/java:jdk_14) **jdk_14**: pointed to `jdk_14_alpine`
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_14_alpine.svg)](https://microbadger.com/images/sgrio/java:jdk_14_alpine) **jdk_14_alpine**: `Oracle Java SE Development Kit 14.0.2 build 12` on top of **Alpine Linux**
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_14_centos.svg)](https://microbadger.com/images/sgrio/java:jdk_14_centos) **jdk_14_centos**: `Oracle Java SE Development Kit 14.0.2 build 12` on top of **CentOS**
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_14_ubuntu.svg)](https://microbadger.com/images/sgrio/java:jdk_14_ubuntu) **jdk_14_ubuntu**: `Oracle Java SE Development Kit 14.0.2 build 12` on top of **Ubuntu**
* Java 11
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_11.svg)](https://microbadger.com/images/sgrio/java:jdk_11) **jdk_11**: pointed to `jdk_11_alpine`
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_11_alpine.svg)](https://microbadger.com/images/sgrio/java:jdk_11_alpine) **jdk_11_alpine**: `Oracle Java SE Development Kit 11.0.2 build 9` on top of **Alpine Linux**
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_11_centos.svg)](https://microbadger.com/images/sgrio/java:jdk_11_centos) **jdk_11_centos**: `Oracle Java SE Development Kit 11.0.2 build 9` on top of **CentOS**
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_11_ubuntu.svg)](https://microbadger.com/images/sgrio/java:jdk_11_ubuntu) **jdk_11_ubuntu**: `Oracle Java SE Development Kit 11.0.2 build 9` on top of **Ubuntu**
* Java 8
  * [![](https://images.microbadger.com/badges/image/sgrio/java:server_jre_8.svg)](https://microbadger.com/images/sgrio/java:server_jre_8) **server_jre_8**: pointed to `sgrio/java:server_jre_8_alpine`
  * [![](https://images.microbadger.com/badges/image/sgrio/java:server_jre_8_alpine.svg)](https://microbadger.com/images/sgrio/java:server_jre_8_alpine) **server_jre_8_alpine**: `Oracle Java SE Server Runtime Environment 8 update 202 build 08` on top of **Alpine Linux**
  * [![](https://images.microbadger.com/badges/image/sgrio/java:server_jre_8_centos.svg)](https://microbadger.com/images/sgrio/java:server_jre_8_centos) **server_jre_8_centos**: `Oracle Java SE Server Runtime Environment 8 update 202 build 08` on top of **CentOS**
  * [![](https://images.microbadger.com/badges/image/sgrio/java:server_jre_8_ubuntu.svg)](https://microbadger.com/images/sgrio/java:server_jre_8_ubuntu) **server_jre_8_ubuntu**: `Oracle Java SE Server Runtime Environment 8 update 202 build 08` on top of **Ubuntu**
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jre_8.svg)](https://microbadger.com/images/sgrio/java:jre_8) **jre_8**: pointed to `sgrio/java:jre_8_alpine`
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jre_8_alpine.svg)](https://microbadger.com/images/sgrio/java:jre_8_alpine) **jre_8_alpine**: `Oracle Java SE Runtime Environment 8 update 202 build 08` on top of **Alpine Linux**
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jre_8_centos.svg)](https://microbadger.com/images/sgrio/java:jre_8_centos) **jre_8_centos**: `Oracle Java SE Runtime Environment 8 update 202 build 08` on top of **CentOS**
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jre_8_ubuntu.svg)](https://microbadger.com/images/sgrio/java:jre_8_ubuntu) **jre_8_ubuntu**: `Oracle Java SE Runtime Environment 8 update 202 build 08` on top of **Ubuntu**
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_8.svg)](https://microbadger.com/images/sgrio/java:jdk_8) **jdk_8**: pointed to `sgrio/java:jdk_8_alpine`
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_8_alpine.svg)](https://microbadger.com/images/sgrio/java:jdk_8_alpine) **jdk_8_alpine**: `Oracle Java SE Development Kit 8 update 202 build 08` on top of **Alpine Linux**
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_8_centos.svg)](https://microbadger.com/images/sgrio/java:jdk_8_centos) **jdk_8_centos**: `Oracle Java SE Development Kit 8 update 202 build 08` on top of **CentOS**
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_8_ubuntu.svg)](https://microbadger.com/images/sgrio/java:jdk_8_ubuntu) **jdk_8_ubuntu**: `Oracle Java SE Development Kit 8 update 202 build 08` on top of **Ubuntu**

