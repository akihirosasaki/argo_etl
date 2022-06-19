FROM openjdk:8-jre-alpine
ARG VERSION=latest

RUN mkdir -p /root/.embulk/bin \
    && wget -q https://dl.embulk.org/embulk-${VERSION}.jar -O /root/.embulk/bin/embulk \
    && chmod +x /root/.embulk/bin/embulk
ENV PATH=$PATH:/root/.embulk/bin
RUN apk add --no-cache libc6-compat

ENTRYPOINT ["java", "-jar", "/root/.embulk/bin/embulk"]