build:
	docker-compose build

up:
	docker-compose up


down:
	docker-compose down

clean:
	docker system prune -f
