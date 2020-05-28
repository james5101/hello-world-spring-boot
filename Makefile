help:
	@echo bla

build:
	docker build -t hello .

run:
	docker run -p 8080:8080 hello 