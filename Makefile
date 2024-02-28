.PHONY: install
install:
	poetry install


.PHONY: migrate
migrate:
	python -m core.manage migrate


.PHONY: migrations
migrations:
	python -m core.manage makemigrations


.PHONY: run-server
run-server:
	python -m core.manage runserver


.PHONY: superuser
superuser:
	python -m core.manage createsuperuser


.PHONY: update
update:  install migrate;
	


