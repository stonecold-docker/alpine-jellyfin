# alpine-jellyfin

#### [alpine-x64-jellyfin](https://hub.docker.com/r/forumi0721alpinex64/alpine-x64-jellyfin/)
[![](https://images.microbadger.com/badges/version/forumi0721alpinex64/alpine-x64-jellyfin.svg)](https://microbadger.com/images/forumi0721alpinex64/alpine-x64-jellyfin "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/forumi0721alpinex64/alpine-x64-jellyfin.svg)](https://microbadger.com/images/forumi0721alpinex64/alpine-x64-jellyfin "Get your own image badge on microbadger.com") [![Docker Stars](https://img.shields.io/docker/stars/forumi0721alpinex64/alpine-x64-jellyfin.svg?style=flat-square)](https://hub.docker.com/r/forumi0721alpinex64/alpine-x64-jellyfin/) [![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721alpinex64/alpine-x64-jellyfin.svg?style=flat-square)](https://hub.docker.com/r/forumi0721alpinex64/alpine-x64-jellyfin/)



----------------------------------------
#### Description

* Distribution : [Alpine Linux](https://alpinelinux.org/)
* Architecture : x64
* Appplication : [Jellyfin](https://jellyfin.github.io/)
    - Jellyfin is a Free Software Media System that puts you in control of managing and streaming your media.
* Base Image
    - [forumi0721alpinex64/alpine-x64-dotnet-2-runtime](https://hub.docker.com/r/forumi0721alpinex64/alpine-x64-dotnet-2-runtime/)



----------------------------------------
#### Run

* x64
```sh
docker run -d \
		   -p 8096:8096/tcp \
		   -p 8920:8920/udp \
		   -v /comf.d:/conf.d \
		   -v /data:/data \
		   forumi0721alpinex64/alpine-x64-jellyfin:latest
```



----------------------------------------
#### Usage

* URL : [http://localhost:8096/](http://localhost:8096/)



----------------------------------------
#### Docker Options

| Option             | Description                                      |
|--------------------|--------------------------------------------------|
| --net=host         | for Broadcast                                    |


#### Ports

| Port               | Description                                      |
|--------------------|--------------------------------------------------|
| 8096/tcp           | http port                                        |
| 8920/tcp           | https port                                       |


#### Volumes

| Volume             | Description                                      |
|--------------------|--------------------------------------------------|
| /conf.d            | Config data                                      |
| /data              | Media data                                       |


#### Environment Variables

| ENV                | Description                                      |
|--------------------|--------------------------------------------------|
| -                  | -                                                |



----------------------------------------
* [forumi0721alpinex64/alpine-x64-jellyfin](https://hub.docker.com/r/forumi0721alpinex64/alpine-x64-jellyfin/)
----------------------------------------
* [forumi0721alpinex64build/alpine-x64-jellyfin-builddep](https://hub.docker.com/r/forumi0721alpinex64build/alpine-x64-jellyfin-builddep/)

