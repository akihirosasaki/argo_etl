FROM openjdk:8-jre-alpine
ARG VERSION

RUN mkdir -p /root/.embulk/bin \
    && wget -q https://dl.embulk.org/embulk-${VERSION}.jar -O /root/.embulk/bin/embulk \
    && chmod +x /root/.embulk/bin/embulk
ENV PATH=$PATH:/root/.embulk/bin
RUN apk add --no-cache libc6-compat 
RUN embulk gem install jwt:2.3.0
RUN embulk gem install embulk-filter-column && embulk gem install embulk-input-gcs && embulk gem install embulk-output-bigquery