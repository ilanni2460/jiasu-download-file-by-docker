FROM alpine:latest

RUN apk --no-cache add wget curl

ENV NEXUS_VERSION=3.19.1-01
ENV NEXUS_DOWNLOAD_URL=https://download.sonatype.com/nexus/3/nexus-${NEXUS_VERSION}-unix.tar.gz

RUN wget NEXUS_DOWNLOAD_URL
