install:
	python3 -m venv venv && . venv/bin/activate && pip install --upgrade pip && pip install -r requirements.txt

format:
	. venv/bin/activate && black *.py

lint:
	. venv/bin/activate && pylint --disable=R,C --ignore-patterns=test_.*?py *.py

test: 
	. venv/bin/activate && python -m pytest -cov=main test_main.py

all: install format lint test