# Docker Image for SASM
SASM is a nice open-source cross-platform assembly IDE. [https://dman95.github.io/SASM/english.html]

This docker image builds from master branch of SASM repo, on a debian base. You should be able to run this on any linux, provided you have an X server running.

## Running SASM in docker

```
docker run --rm -it --privileged \
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
```

## Notes
1. Uses the underlying X server
2. Mounts the SASM config as a volume, so that configurations are preserved across docker runs.
3. Mounts your asm_programs folder (change this line as needed.)
4. SASM in the image is installed at it's default location in /usr/share.
