PROJECT_VERSION=0.2

default: help

run-docker: ## Run docker with latest repositories by git cloning
	docker compose up --force-recreate --build -d

run-test-docker: ## Run test docker with local files (Need to clone repositories first)
	docker compose -f ./docker-compose-test.yml up --force-recreate --build -d

clone-repositories: ## Cloning the repositories to present local directory (Can use 'NAME' arguments for cloning from your fork)
	@if [ -d ./Frontend ] || [ -d ./Backend ] || [ -d ./ImageSR ] || [ -d ./VideoSR ]; \
	then \
		echo "Already Exists"; \
	else \
		if [ -v NAME ]; then \
			git clone https://github.com/$(NAME)/Frontend.git; \
			git clone https://github.com/$(NAME)/Backend.git; \
			git clone https://github.com/$(NAME)/ImageSR.git; \
			git clone https://github.com/$(NAME)/VideoSR.git; \
		else \
			git clone https://github.com/GCU-Graduate-Project-Sharpic/Frontend.git; \
			git clone https://github.com/GCU-Graduate-Project-Sharpic/Backend.git; \
			git clone https://github.com/GCU-Graduate-Project-Sharpic/ImageSR.git; \
			git clone https://github.com/GCU-Graduate-Project-Sharpic/VideoSR.git; \
		fi; \
	fi

delete-repositories: ## Delete all repositories in this directory
	rm -rf ./Frontend
	rm -rf ./Backend
	rm -rf ./ImageSR
	rm -rf ./VideoSR

stop-docker: ## Stop docker that was run by 'make run-docker' command
	docker compose down

stop-test-docker: ## Stop docker that was run by 'make run-test-docker' command
	docker compose -f ./docker-compose-test.yml down -v

delete-docker: ## Stop and delete docker images that was run by 'make run-docker' command
	docker compose down --rmi=all -v

delete-test-docker: ## Stop and delete docker images that was run by 'make run-test-docker' command
	docker compose -f ./docker-compose-test.yml down --rmi=all -v

help:
	@echo 'Commands:'
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "    %-20s %s\n", $$1, $$2}'
	@echo

.PHONY: help run-dokcer run-test-docker clone-rpositories stop-docker delete-docker delete-test-docker