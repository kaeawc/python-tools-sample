
.PHONY: build

build: lint test

run-lint:
	pycodestyle sample | tee test-reports/pycodestyle.log

clean-lint:
	rm -f find test-reports/pycodestyle.log

lint: clean-lint run-lint
	find test-reports/pycodestyle.log

run-test:
	nose2 -c unittest.cfg

clean-test:
	rm -rf htmlcov
	rm -f test-reports/junit-results.xml
	rm -f .coverage

test: clean-test run-test
	find test-reports/junit-results.xml

run-coverage:
	coverage nose2 -c unittest.cfg

clean-coverage:
	rm -rf htmlcov
	rm -f test-reports/junit-results.xml
	rm -f .coverage

coverage: clean-coverage run-coverage
	find .coverage