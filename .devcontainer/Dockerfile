FROM archlinux

RUN pacman -Syu --noconfirm && \
    pacman -S --needed --noconfirm \
    base-devel git fakeroot nodejs go meson sudo cargo jdk-openjdk

RUN useradd -m -G wheel vscode

COPY setup-sudo.sh /

RUN echo -e "\n\
pacman-key --init && \\\n\
pacman-key --populate archlinux && \\\n\
pacman -Syu --noconfirm\n\
" >> /etc/bash.bashrc

USER vscode

RUN git clone https://github.com/nvm-sh/nvm.git && \
    cd nvm && \
    bash install.sh && \
    cd .. && \
    rm -rf nvm

RUN touch /root/.bashrc && \
    touch /home/vscode/.bashrc

USER root
