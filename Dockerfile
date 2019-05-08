ARG DOCKER_ARCH="x64"

FROM forumi0721alpinex64/alpine-x64-dotnet-sdk:latest as builder

LABEL maintainer="forumi0721@gmail.com"

COPY build/. /usr/local/

#RUN ["docker-build-start"]

RUN ["docker-build"]

#RUN ["docker-build-end"]



FROM forumi0721alpine${DOCKER_ARCH}build/alpine-${DOCKER_ARCH}-ffmpeg-build:latest as ffmpeg



FROM forumi0721alpine${DOCKER_ARCH}build/alpine-${DOCKER_ARCH}-skiasharp-build:latest as skiasharp



FROM forumi0721alpine${DOCKER_ARCH}/alpine-${DOCKER_ARCH}-dotnet-runtime:latest

LABEL maintainer="forumi0721@gmail.com"

COPY --from=builder /opt/jellyfin /opt/jellyfin
COPY --from=ffmpeg /opt/ffmpeg /usr/local/
COPY --from=skiasharp /opt/skia/libSkiaSharp.so /opt/jellyfin/

COPY local/. /usr/local/

#RUN ["docker-build-start"]

RUN ["docker-init"]

#RUN ["docker-build-end"]

ENTRYPOINT ["docker-run"]

EXPOSE 8096/tcp 8920/tcp

VOLUME /conf.d

