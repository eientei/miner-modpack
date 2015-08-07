all:
	make -C archbase baseimage
	sudo docker build -t base/archlinux:yaourt archlinux-yaourt/
	sudo docker build -t base/archlinux:jdk archlinux-jdk/
	sudo docker build -t games/minecraft:base games-minecraft-base/
	sudo docker build -t games/minecraft:1.7.10 games-minecraft-1.7.10/

clean: 
	make -C archbase clean

