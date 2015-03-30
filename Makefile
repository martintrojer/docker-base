.PHONY:	connect

connect:
	docker run --rm -v $(shell pwd):/home/docker/hacking -i -t docker-base /bin/bash

build:
	docker build --rm -t docker-base .

rebuild:
	docker build --no-cache --rm -t docker-base .
