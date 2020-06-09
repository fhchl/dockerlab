# Give this lab a name
name = mydatalab

build:
	sudo docker build -t $(name) .

run:
	sudo docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -e GRANT_SUDO=yes -v "$(CURDIR)/persistent":/home/jovyan/persistent -t $(name)