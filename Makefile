RUN_COMMAND = docker-compose run --rm app sh -c

lint:
	$(RUN_COMMAND) "flake8"

format:
	$(RUN_COMMAND) "black ."

test:
	$(RUN_COMMAND) "python manage.py test"

build:
	docker-compose build

run:
	docker-compose up