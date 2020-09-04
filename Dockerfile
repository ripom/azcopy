FROM alpine:latest

ARG VERSION=azcopy_linux_amd64_10.0.8

RUN apk --update add --virtual build-dependencies --no-cache wget tar && apk --update add libc6-compat ca-certificates && apk add cifs-utils
RUN wget -O azcopyv10.tar https://aka.ms/downloadazcopy-v10-linux && \
    mkdir /app && \
    tar -xzf azcopyv10.tar -C /app/ --strip-components=1 && \
    rm -rf azcopy* && \
    apk del build-dependencies

WORKDIR /app
