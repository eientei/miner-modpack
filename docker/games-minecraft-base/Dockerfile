FROM base/archlinux:jdk
RUN sudo pacman -S --noconfirm screen \
 && mkdir /home/user/server
COPY minecraft.service /etc/systemd/system/
EXPOSE 25565
WORKDIR /home/user/server
