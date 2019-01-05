#!/bin/bash

docker run -it --privileged \
    --net host \
    --memory 512mb \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
    --env="DISPLAY" \
    -v $HOME/programs/asm_programs:/root/asm_programs \
    -v "$HOME/.config/SASM Project/SASM.conf":"/root/.config/SASM Project/SASM.conf" \
    -e QT_X11_NO_MITSHM=1 \
    --name sasm \
    abhishekmishra3/sasm:latest sasm
