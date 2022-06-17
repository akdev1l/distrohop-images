#!/bin/bash

podman run --rm -it \
    --gpus "device='0'" \
    --privileged \
    --pids-limit=-1 \
    -e DISTROHOP_USER="akdev" \
    -e DISTROHOP_PASSWORD="test" \
    -v /run/libvirt:/mnt/libvirt \
    -v /run/podman/podman.sock:/mnt/podman/podman.sock \
    -v /run/udev/data:/run/udev/data \
    -v /run/podman:/run/podman \
    akdev1l/fedora-gnome:latest
