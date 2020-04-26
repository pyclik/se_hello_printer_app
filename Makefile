 .PHONY: test

deps:
	pip install -r requirements.txt;
	pip install -r test_requirements.txt

test:
	echo 123
	PYTHONPATH=. py.test

lint:
	flake8 hello_world test

run:
	python main.py

docker_build:
	docker build -t hello-world-printer .
