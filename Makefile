IMAGE=hellworld
TAG=latest

DOCKER_COMPOSE=docker-compose -p $(IMAGE) -f helloworld/docker-compose.yml

docker:
	docker build -f helloworld/src/consumer/Dockerfile -t $(IMAGE):$(TAG) .
	docker build -f helloworld/src/consumer/Dockerfile -t $(IMAGE):latest .

install:
	pip3 install -r requirements.txt

serve: 
	$(DOCKER_COMPOSE) up --build
