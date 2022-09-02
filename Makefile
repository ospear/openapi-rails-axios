.PHONY: up
up:
	docker compose up -d

.PHONY: down
down:
	docker compose down

.PHONY: ps
ps:
	docker compose ps

.PHONY: html
html:
	docker-compose run --rm redoc-cli build merged.yaml -o merged.html

