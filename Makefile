RUN_COMMAND_APP = docker-compose run --rm app sh -c
RUN_COMMAND_DB = docker-compose run --rm db sh -c

lint:
	$(RUN_COMMAND_APP) "flake8"

format:
	$(RUN_COMMAND_APP) "black ."

test:
	$(RUN_COMMAND_APP) "python manage.py test"

migrations-make:
	$(RUN_COMMAND_APP) "python manage.py makemigrations"

migrations-migrate:
	$(RUN_COMMAND_APP) "python manage.py migrate"

db-console:
	$(RUN_COMMAND_DB) "psql -h db -U dev_user dev_db"

build:
	docker-compose build

run:
	docker-compose up