# Copyright (c) 2016-2017 Accupara Inc. All rights reserved

SUBDIRS=ubuntu centos business-cards django-nginx linuxkernel rsync qt qemu ffmpeg duperemove mobile

include $(shell git rev-parse --show-toplevel)/Makefile.subdirs
