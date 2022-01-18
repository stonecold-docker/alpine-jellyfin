ARG BASE_TAG=x64

FROM forumi0721/alpine-dotnet-sdk:x64 as builder

LABEL maintainer="forumi0721@gmail.com"

ENV DOTNET_RUNTIME=linux-musl-x64

COPY local/. /usr/local/

RUN ["docker-build-jellyfin"]



FROM forumi0721/alpine-base:${BASE_TAG}

LABEL maintainer="forumi0721@gmail.com"

COPY --from=builder /output /app

COPY local/. /usr/local/

RUN ["docker-build"]

ENTRYPOINT ["docker-run"]

EXPOSE 8096/tcp 8920/tcp

VOLUME /conf.d

