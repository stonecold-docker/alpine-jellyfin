ARG BUILD_ARCH=x64

FROM forumi0721alpine${BUILD_ARCH}build/alpine-${BUILD_ARCH}-jellyfin-builddep:latest as builddep

FROM forumi0721/alpine-x64-base:latest

LABEL maintainer="forumi0721@gmail.com"

COPY --from=builddep /app /app

COPY local/. /usr/local/

#RUN ["docker-build-start"]

RUN ["docker-init"]

#RUN ["docker-build-end"]

ENTRYPOINT ["docker-run"]

EXPOSE 8096/tcp 8920/tcp

VOLUME /conf.d

