DOCKER_COMPOSE ?= docker-compose

.PHONY: help
help: ## show all targets help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

.PHONY: build
build: ## build target that will perform a docker-compose build command against our Dockerfile
	${DOCKER_COMPOSE} build

.PHONY: run
run: ## run target that will perform a docker-compose run against a single docker-compose service
	${DOCKER_COMPOSE} run -d javaspring

.PHONY: up
up: ## build target that will perform a docker-compose up (build and run) command against our Dockerfile
	${DOCKER_COMPOSE} up -d

.PHONY: endpoint
endpoint:
	curl http://localhost:8080

.PHONY: clean
clean: ## build target that will perform a docker-compose down command against our Dockerfile
	${DOCKER_COMPOSE} down --rmi all
