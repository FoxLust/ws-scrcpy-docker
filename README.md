# Dockerize of ws scrcpy v0.8.1 (NetrisTV/ws-scrcpy)
[![Docker Pulls](https://img.shields.io/docker/pulls/herlambang333/ws-scrcpy-docker?style=flat-square)](https://hub.docker.com/r/herlambang333/ws-scrcpy-docker)
[![Docker Image Size (amd64)](https://img.shields.io/docker/image-size/herlambang333/ws-scrcpy-docker/latest?arch=amd64&label=amd64%20image%20size&style=flat-square)](https://hub.docker.com/r/herlambang333/ws-scrcpy-docker)
[![Docker Image Size (arm64)](https://img.shields.io/docker/image-size/herlambang333/ws-scrcpy-docker/latest?arch=arm64&label=arm64%20image%20size&style=flat-square)](https://hub.docker.com/r/herlambang333/ws-scrcpy-docker)

All the same except i'm building it to run in docker container, Available for ARM64 and AMD64

**Docker Hub:** [`herlambang333/ws-scrcpy-docker`](https://hub.docker.com/r/herlambang333/ws-scrcpy-docker)

```
docker run --rm -it --privileged \
  -v /dev/bus/usb:/dev/bus/usb \
  -v ~/.android:/root/.android \
  -p 8000:8000 \
  herlambang333/ws-scrcpy-docker
```
