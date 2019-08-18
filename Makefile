# Variables
DOCKER_COMPOSE_FILE := "devops/devenv/docker-compose.yml"
COMPONENT           := nfl-collision-api

# Commands

all: down build up logs
up:
	docker-compose -p ${COMPONENT} -f $(DOCKER_COMPOSE_FILE) up -d
stop:
	docker-compose -p ${COMPONENT} -f $(DOCKER_COMPOSE_FILE) stop
down:
	docker-compose -p ${COMPONENT} -f $(DOCKER_COMPOSE_FILE) down -v
build:
	docker-compose -p ${COMPONENT} -f $(DOCKER_COMPOSE_FILE) build
logs:
	docker logs ${COMPONENT}_api_1 -f
enter:
	@./devops/devenv/enter.sh ${COMPONENT}
