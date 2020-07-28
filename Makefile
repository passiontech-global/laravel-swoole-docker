all: run

.PHONY: init
init:
  docker-compose up -d
  sleep 5
  docker-compose exec app chown -R www-data.www-data /app/storage

.PHONY: run
run:
  docker-compose up -d