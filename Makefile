USER:=nwik
PACKAGE:=rpi-ser2net

setup:
	docker run --rm --privileged multiarch/qemu-user-static:register --reset

all: setup docker

docker:
	docker build -t $(USER)/$(PACKAGE) .

push:
	docker push $(USER)/$(PACKAGE)
