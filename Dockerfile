FROM alpine:latest

RUN apk --no-cache add wget curl

ENV NEXUS_VERSION_3=3.19.1-01
ENV NEXUS_DOWNLOAD_URL_3=https://download.sonatype.com/nexus/3/nexus-${NEXUS_VERSION_3}-unix.tar.gz

ENV NEXUS_VERSION_2=2.14.15-01
ENV NEXUS_DOWNLOAD_URL_2=https://download.sonatype.com/nexus/oss/nexus-${NEXUS_VERSION_2}-bundle.tar.gz


ENV JFROG_VERSION=6.16.0
ENV JFROG_DOWNLOAD_URL=https://bintray.com/jfrog/artifactory/download_file?file_path=jfrog-artifactory-oss-${JFROG_VERSION}.zip


RUN wget ${NEXUS_DOWNLOAD_URL_3}

RUN wget ${NEXUS_DOWNLOAD_URL_2}

RUN wget ${JFROG_DOWNLOAD_URL}
