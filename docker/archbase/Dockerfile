FROM scratch

COPY data /
COPY sudoers /etc/sudoers

RUN useradd -m user \
 && echo -e "ignore\nignore" | passwd user \
 && chown user:user -R /home/user \
 && chmod 4755 /usr/bin/sudo \
 && sed '/OOMScoreAdjust=-900/d' /usr/lib/systemd/system/dbus.service > /etc/systemd/system/dbus.service \
 && sed '/#\[\(testing\|community-testing\|multilib-testing\|multilib\)\]/{N;s/#//g}' -i /etc/pacman.conf \
 && systemctl mask systemd-remount-fs.service dev-hugepages.mount sys-fs-fuse-connections.mount systemd-logind.service getty.target console-getty.service

VOLUME ["/sys/fs/cgroup", "/run", "/tmp"]
ENV container=docker TERM=xterm-256color
USER user
WORKDIR /home/user
