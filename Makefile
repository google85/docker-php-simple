include .env

help: ## View all make targets
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

start: ## Start the dev container stack
	@echo "Starting up dev container..."
	@echo "Please open http://localhost:${PORT} \r\n\r\n"
	docker compose --project-name '${DOCKER_CONTAINER_NAME}' up  --build --force-recreate

stop: ## Stop the container stack
	@echo "Stopping all containers..."
	docker compose --project-name '${DOCKER_CONTAINER_NAME}' stop && \
	docker compose --project-name '${DOCKER_CONTAINER_NAME}' down
