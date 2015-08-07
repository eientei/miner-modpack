baseimage: build
	docker build -t base/archlinux .

build:
	mkdir -p data
	pacstrap -d data/ pacman base-devel wget tar sudo shadow iputils systemd systemd-sysvcompat rsync nano

clean:
	rm -fr data
