ARG BUILD_ARCH=x64

FROM forumi0721alpine${BUILD_ARCH}build/alpine-${BUILD_ARCH}-jellyfin-builddep-ffmpeg:latest as ffmpegbuilddep

#FROM forumi0721alpine${BUILD_ARCH}build/alpine-${BUILD_ARCH}-jellyfin-builddep-skiasharp:latest as skiasharpbuilddep

FROM forumi0721alpine${BUILD_ARCH}/alpine-${BUILD_ARCH}-dotnet-3-sdk:latest

LABEL maintainer="forumi0721@gmail.com"

COPY --from=ffmpegbuilddep /app /app

#COPY --from=skiasharpbuilddep /app /app

COPY local/. /usr/local/

#RUN ["docker-build-start"]

RUN ["docker-init"]

#RUN ["docker-build-end"]


