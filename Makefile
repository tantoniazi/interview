SHELL := /bin/bash

help: ## Show this help
	@echo -e "usage: make [target]\n\ntarget:"
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/: ##\s*/\t/' | expand -t 18 | pr -to2


create: ## Run db:create
create:
	docker exec -i interview-web rake db:create

migrate: ## Run db:migrate
migrate:
	docker exec -i interview-web rake db:migrate

seed: ## Run db:seed
seed:
	docker exec -i interview-web rake db:seed

docker: ## Run docker-compose up -d
docker: 
	docker-compose up -d --build


ifndef VERBOSE
.SILENT:
endif

# fgrep -h "##" Makefile | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/:.*//' | paste -sd " " -
.PHONY: help create migrate seed docker
