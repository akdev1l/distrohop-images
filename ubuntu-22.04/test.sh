#!/bin/bash

podman run --rm -it \
    --gpus all \
    --privileged \
    --pids-limit=-1 \
    --net=host \
    -e DISTROHOP_USER="akdev" \
    -e DISTROHOP_PASSWORD="test" \
    -v /run/libvirt:/mnt/libvirt \
    -v /run/podman/podman.sock:/mnt/podman/podman.sock \
    -v /run/udev/data:/run/udev/data \
    -v /run/podman:/run/podman \
    akdev1l/ubuntu-22.04:latest
