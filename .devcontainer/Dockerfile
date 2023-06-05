FROM archlinux

RUN pacman -Sy --noconfirm archlinux-keyring && \
    pacman-key --init && \
    pacman -Scc --noconfirm && \
    pacman-key --populate archlinux && \
    pacman -Syu --noconfirm && \
    pacman -S --needed --noconfirm \
    base-devel git fakeroot nodejs go meson sudo cargo jdk-openjdk

RUN useradd -m -G wheel vscode

COPY setup-sudo.sh /
RUN bash setup-sudo.sh && \
    rm setup-sudo.sh

USER vscode

RUN git clone https://github.com/nvm-sh/nvm.git && \
    cd nvm && \
    bash install.sh && \
    cd .. && \
    rm -rf nvm

RUN touch /root/.bashrc && \
    touch /home/vscode/.bashrc

USER root
