DOCKER_CLIENT_VERSION ?=20.10.7
DOCKER_API_VERSION ?=1.41

build/docker:
	docker pull golang:1.16-buster
	docker build \
		--build-arg ARG_DOCKER_CLIENT_VERSION=$(DOCKER_CLIENT_VERSION) \
		--build-arg ARG_DOCKER_API_VERSION=$(DOCKER_API_VERSION) \
		-t $(NAME) .