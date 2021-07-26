# alpine-jellyfin
![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721/alpine-jellyfin)
![Docker Stars](https://img.shields.io/docker/stars/forumi0721/alpine-jellyfin)



----------------------------------------
### x64
![Docker Image Version](https://img.shields.io/docker/v/forumi0721/alpine-jellyfin/latest)
![Docker Image Size](https://img.shields.io/docker/image-size/forumi0721/alpine-jellyfin/latest)



----------------------------------------
#### Description

* Distribution : [Alpine Linux](https://alpinelinux.org/)
* Architecture : x64
* Appplication : [Jellyfin](https://jellyfin.github.io/)
    - Jellyfin is a Free Software Media System that puts you in control of managing and streaming your media.



----------------------------------------
#### Run

```sh
docker run -d \
		   -p 8096:8096/tcp \
		   -p 8920:8920/udp \
		   -v /comf.d:/conf.d \
		   -v /data:/data \
		   forumi0721/alpine-jellyfin:[ARCH_TAG]
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

