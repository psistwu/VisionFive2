#!/bin/bash

set -euo pipefail

apt-get update
apt-get upgrade -y
apt-get install -y build-essential g++ git autoconf automake autotools-dev \
    texinfo bison xxd curl flex gawk gdisk gperf libgmp-dev \
    libmpfr-dev libmpc-dev libz-dev libssl-dev libncurses-dev libtool \
    patchutils python screen texinfo unzip zlib1g-dev libyaml-dev wget \
    cpio bc dosfstools mtools device-tree-compiler libglib2.0-dev \
    libpixman-1-dev kpartx kmod rsync git-lfs

ln -sf /bin/* /usr/bin/

useradd -m -u $USER_ID $USER

echo "The builder container is ready."
echo "Please use the following command to connect to container CLI."
echo "$ docker compose exec -u (id -u) -w /workspace image-builder bash"
sleep infinity
