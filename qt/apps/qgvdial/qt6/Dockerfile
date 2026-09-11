# Copyright (c) 2016-2026 Crave.io Inc. All rights reserved
FROM accupara/qt6:ubuntu_2404

# Keep the update separate so that Docker build system can cache it.
RUN set -x \
 && sudo apt-get update \
 && sudo apt-get install -y \
        libegl-dev \
        libgl-dev \
        libopengl-dev \
        libnss3 \
        libnspr4 \
        libevent-dev \
        libopus-dev \
        libwebp-dev \
        libsnappy-dev \
        libminizip-dev \
        perl \
# Clean up image
 && sudo apt-get clean \
 && sudo rm -f /var/lib/apt/lists/*_dists_*
