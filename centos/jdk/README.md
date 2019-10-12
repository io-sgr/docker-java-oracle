## Customized Docker images of Java 7/8/9/10/11/12/13

### Branches

* Active branches:
  * `master` - Latest Java, currently version 13
  * `java12` - Java 12
* Inactive branches:
  * `java11` - Java 11
  * `java8` - Java 8
* Deprecated:
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
  * [![](https://images.microbadger.com/badges/image/sgrio/java:latest_alpine.svg)](https://microbadger.com/images/sgrio/java:latest_alpine) **latest_alpine**: pointed to `sgrio/java:jdk_13_alpine`
  * [![](https://images.microbadger.com/badges/image/sgrio/java:latest_centos.svg)](https://microbadger.com/images/sgrio/java:latest_centos) **latest_centos**: pointed to `sgrio/java:jdk_13_centos`
  * [![](https://images.microbadger.com/badges/image/sgrio/java:latest_ubuntu.svg)](https://microbadger.com/images/sgrio/java:latest_ubuntu) **latest_ubuntu**: pointed to `sgrio/java:jdk_13_ubuntu`
* Java 13
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_13.svg)](https://microbadger.com/images/sgrio/java:jdk_13) **jdk_13**: pointed to `jdk_13_alpine`
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_13_alpine.svg)](https://microbadger.com/images/sgrio/java:jdk_13_alpine) **jdk_13_alpine**: `Oracle Java SE Development Kit 13 build 33` on top of **Alpine Linux**
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_13_centos.svg)](https://microbadger.com/images/sgrio/java:jdk_13_centos) **jdk_13_centos**: `Oracle Java SE Development Kit 13 build 33` on top of **CentOS**
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_13_ubuntu.svg)](https://microbadger.com/images/sgrio/java:jdk_13_ubuntu) **jdk_13_ubuntu**: `Oracle Java SE Development Kit 13 build 33` on top of **Ubuntu**
* Java 12
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_12.svg)](https://microbadger.com/images/sgrio/java:jdk_12) **jdk_12**: pointed to `jdk_12_alpine`
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_12_alpine.svg)](https://microbadger.com/images/sgrio/java:jdk_12_alpine) **jdk_12_alpine**: `Oracle Java SE Development Kit 12.0.2 build 10` on top of **Alpine Linux**
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_12_centos.svg)](https://microbadger.com/images/sgrio/java:jdk_12_centos) **jdk_12_centos**: `Oracle Java SE Development Kit 12.0.2 build 10` on top of **CentOS**
  * [![](https://images.microbadger.com/badges/image/sgrio/java:jdk_12_ubuntu.svg)](https://microbadger.com/images/sgrio/java:jdk_12_ubuntu) **jdk_12_ubuntu**: `Oracle Java SE Development Kit 12.0.2 build 10` on top of **Ubuntu**
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

