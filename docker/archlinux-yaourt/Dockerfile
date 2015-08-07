FROM base/archlinux
RUN wget https://aur.archlinux.org/packages/pa/package-query/package-query.tar.gz \
 && wget https://aur.archlinux.org/packages/ya/yaourt/yaourt.tar.gz \
 && tar -xvf package-query.tar.gz \
 && tar -xvf yaourt.tar.gz \
 && cd /home/user/package-query \
 && makepkg -si --noconfirm \
 && cd /home/user/yaourt \
 && makepkg -si --noconfirm \
 && cd /home/user \
 && rm -rf package-query* yaourt*
