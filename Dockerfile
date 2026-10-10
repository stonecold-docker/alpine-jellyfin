FROM forumi0721/alpine-base:latest

LABEL maintainer="forumi0721@gmail.com"

COPY local/. /usr/local/

RUN ["docker-build"]

ENTRYPOINT ["docker-run"]

EXPOSE 8096/tcp 8920/tcp

VOLUME /conf.d

