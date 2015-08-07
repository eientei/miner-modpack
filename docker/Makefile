all:
	make -C archbase baseimage
	docker build -t base/archlinux:yaourt archlinux-yaourt/
	docker build -t base/archlinux:jdk archlinux-jdk/
	docker build -t games/minecraft:base games-minecraft-base/
	docker build -t games/minecraft:1.7.10 games-minecraft-1.7.10/

clean: 
	make -C archbase clean

