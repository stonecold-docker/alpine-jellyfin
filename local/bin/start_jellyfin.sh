#!/bin/sh

#set -e

RUN_USER_NAME="${RUN_USER_NAME:-root}"
RUN_USER_GROUP="$(id -gn "${RUN_USER_NAME}")"

echo "${RUN_USER_NAME}.${RUN_USER_GROUP}"

source /etc/profile

cd /app/jellyfin
su-exec ${RUN_USER_NAME} /app/jellyfin/jellyfin \
	--datadir /conf.d/jellyfin \
	--cachedir /cache \
	--ffmpeg /usr/local/bin/ffmpeg

