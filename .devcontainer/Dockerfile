FROM archlinux/base

RUN pacman -Syu --needed --noconfirm \
    base-devel git fakeroot nodejs go meson sudo cargo jdk-openjdk

RUN useradd -m -G wheel vscode

COPY setup-sudo.sh /
RUN chmod +x /setup-sudo.sh

USER vscode

RUN bash /setup-sudo.sh
RUN git clone https://github.com/nvm-sh/nvm
RUN touch /home/vscode/.bashrc
RUN bash /nvm/install.sh

WORKDIR /home/vscode

CMD ["bash"]
