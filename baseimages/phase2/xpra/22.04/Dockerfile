# Copyright (c) 2016-2025 Crave.io Inc. All rights reserved
FROM accupara/ubuntu:22.04

COPY kb-config.exp startcmd.sh /tmp/

RUN set -x \
 && export DEBIAN_FRONTEND=noninteractive \
 && sudo eatmydata apt-get update \
 && sudo eatmydata apt-get install -y \
        binutils \
        expect \
        openssh-server \
        python3-pip \
# No longer required?
 && sudo expect /tmp/kb-config.exp \
 && sudo eatmydata apt-get install -y xpra \
 && mkdir -p ~/.ssh/ \
 && grep -v start-new-commands /etc/xpra/xpra.conf > /tmp/xpra.conf \
 && echo "start-new-commands = yes" >> /tmp/xpra.conf \
 && sudo mv /tmp/xpra.conf /etc/xpra/xpra.conf \
 && echo "alias xpra_start='xpra control :100 start'" >> ~/.bashrc \
 && sudo eatmydata apt-get clean \
 && sudo rm -f /var/lib/apt/lists/*_dists_*

CMD ["/tmp/startcmd.sh"]
EXPOSE 22
