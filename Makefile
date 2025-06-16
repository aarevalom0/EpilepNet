install:
	pip install --upgrade pip && \
	pip install -r requirements.txt
test:
	python -m pytest -vv test_EpilepNet.py

all: install test

clean:
	rm -rf __pycache__ .pytest_cache .mypy_cache .coverage .coverage.*
	rm -rf *.egg-info dist build
	rm -rf *.pyc *.pyo
	rm -rf *.log
	rm -rf .DS_Store
