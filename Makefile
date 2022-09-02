.PHONY: up
up:
	docker compose up

.PHONY: down
down:
	docker compose down

.PHONY: ps
ps:
	docker compose ps

.PHONY: html
html:
	docker compose run --rm redoc-cli build merged.yaml -o merged.html

.PHONY: gen-be
gen-be:
	# docker compose run --rm generator bash /usr/local/bin/docker-entrypoint.sh generate -i /local/openapi/merged.yaml -g ruby-on-rails -o /local/be
	docker compose run --rm generator generate -i /local/openapi/merged.yaml -g ruby-on-rails -o /local/be

.PHONY: gen-fe
gen-fe:
	docker compose run --rm generator generate -i /local/openapi/merged.yaml -g typescript-axios -o /local/fe/api
