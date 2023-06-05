FROM archlinux

RUN pacman -Syu --noconfirm && \
    pacman -S --needed --noconfirm \
    base-devel git fakeroot nodejs go meson sudo cargo jdk-openjdk

RUN useradd -m -G wheel vscode

COPY setup-sudo.sh /
RUN bash setup-sudo.sh && \
    rm setup-sudo.sh

USER vscode

# import keyring and populate the archlinux keys
RUN sudo pacman-key --init && \
    sudo pacman-key --populate archlinux

RUN sudo pacman -Syu --noconfirm

USER root

RUN git clone https://github.com/nvm-sh/nvm.git && \
    cd nvm && \
    bash install.sh && \
    cd .. && \
    rm -rf nvm

RUN touch /root/.bashrc && \
    touch /home/vscode/.bashrc

USER root
