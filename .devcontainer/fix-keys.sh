#!/bin/bash

pacman -Sy --noconfirm archlinux-keyring && \
pacman-key --init && \
pacman -Scc --noconfirm && \
pacman-key --populate archlinux && \
pacman -Syu --noconfirm && \
pacman -S --needed --noconfirm \
