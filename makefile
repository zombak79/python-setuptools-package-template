build:
	venv/bin/python3 -m build

deploy:
	venv/bin/python3 -m twine upload --repository pypi dist/*

clean:
	rm dist/*
	rm -r src/*egg*

prepare:
	python -m venv venv
	venv/bin/pip3 install twine build
