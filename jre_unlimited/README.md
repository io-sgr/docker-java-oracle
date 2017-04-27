## Docker images of Java 7/8 provided by Oracle on top of Ubuntu

This repository contains **Dockerfile** of [Java SE](http://java.oracle.com/) for [Docker](https://www.docker.com/)'s [automated build](https://hub.docker.com/r/sgrio/java-oracle/) published to the public [Docker Hub](https://hub.docker.com/).

To use this image, you must accept the [Oracle Binary Code License Agreement](http://www.oracle.com/technetwork/java/javase/terms/license/index.html) for Java SE.

### Docker Tags

`sgrio/java-oracle` provides several tagged images:

* Default
  * `latest`: pointed to `sgrio/java-oracle:server_jre_8_unlimited`

* Java 8
  * `server_jre_8`: based on `Oracle Java SE Server Runtime Environment 8 update 131 build 11`
  * `jre_8`: based on `Oracle Java SE Runtime Environment 8 update 131 build 11`
  * `jdk_8`: based on `Oracle Java SE Development Kit 8 update 131 build 11`

* Java 7
  * `server_jre_7`: based on `Oracle Java SE Server Runtime Environment 7 update 80 build 15`
  * `jre_7`: based on `Oracle Java SE Runtime Environment 7 update 80 build 15`
  * `jdk_7`: based on `Oracle Java SE Development Kit 7 update 80 build 15`

* Java Cryptography Extension (JCE) Unlimited Strength Jurisdiction Policy Files
  You can always apply tailing `_unlimited` to any of the tags above if you want a patched version, for example `server_jre_8_unlimited`.

### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://hub.docker.com/r/sgrio/java-oracle/) from public [Docker Hub](https://hub.docker.com/): `docker pull sgrio/java-oracle`

### Usage

    docker run -it --rm sgrio/java-oracle java -version
