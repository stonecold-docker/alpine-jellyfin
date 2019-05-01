#!/bin/sh

#set -e

RUN_USER_NAME="${RUN_USER_NAME:-root}"
RUN_USER_GROUP="$(id -gn "${RUN_USER_NAME}")"

echo "${RUN_USER_NAME}.${RUN_USER_GROUP}"

cd /opt/jellyfin
su-exec ${RUN_USER_NAME} dotnet /opt/jellyfin/jellyfin.dll \
	--datadir /conf.d/jellyfin \
	--cachedir /cache \
	--ffmpeg /usr/local/bin/ffmpeg

