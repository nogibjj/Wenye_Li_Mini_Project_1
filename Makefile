install:
	python3 -m venv venv && source venv/bin/activate && pip install --upgrade pip && pip install -r requirements.txt

format:
	source venv/bin/activate && black *.py

lint:
	source venv/bin/activate && pylint --disable=R,C --ignore-patterns=test_.*?py *.py

test: 
	source venv/bin/activate && python -m pytest -cov=main test_main.py

all: install format lint test