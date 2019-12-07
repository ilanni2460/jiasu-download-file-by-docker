FROM alpine:latest

RUN apk --no-cache add wget curl

ARG NEXUS_VERSION=3.19.1-01
ARG NEXUS_DOWNLOAD_URL=https://download.sonatype.com/nexus/3/nexus-${NEXUS_VERSION}-unix.tar.gz

RUN wget NEXUS_DOWNLOAD_URL