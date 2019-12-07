FROM alpine:latest

RUN apk --no-cache add wget curl

ENV NEXUS_VERSION_3=3.19.1-01
ENV NEXUS_DOWNLOAD_URL_3=https://download.sonatype.com/nexus/3/nexus-${NEXUS_VERSION}-unix.tar.gz

ENV NEXUS_VERSION_2=2.14.15-01
ENV NEXUS_DOWNLOAD_URL_2=https://download.sonatype.com/nexus/oss/nexus-${NEXUS_VERSION}-bundle.tar.gz

RUN wget ${NEXUS_DOWNLOAD_URL_3}

RUN wget ${NEXUS_DOWNLOAD_URL_2}
