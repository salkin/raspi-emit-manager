USER:=nwik
PACKAGE:=rpi-ser2net

all: docker

setup:
	docker run --rm --privileged multiarch/qemu-user-static:register --reset


docker:
	docker build -t $(USER)/$(PACKAGE) .

push:
	docker push $(USER)/$(PACKAGE)
