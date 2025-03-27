#!/bin/sh

#set -e

RUN_USER_NAME="${RUN_USER_NAME:-root}"
RUN_USER_GROUP="$(id -gn "${RUN_USER_NAME}")"

echo "${RUN_USER_NAME}.${RUN_USER_GROUP}"

source /etc/profile

cd /conf.d/jellyfin
exec su-exec ${RUN_USER_NAME} /usr/bin/jellyfin \
	--datadir /conf.d/jellyfin \
	--cachedir /cache \
	--webdir /usr/share/webapps/jellyfin-web \
	--ffmpeg /usr/bin/ffmpeg

