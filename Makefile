
## Run unit tests and write coverage.xml for Harness code coverage
.PHONY: test-coverage
test-coverage:
	python3 -m pip install --upgrade pip
	python3 -m pip install -e . pytest pytest-cov
	python3 -m pytest -q tests --cov=mmh3cffi --cov-report=xml:coverage.xml
