
.PHONY: build

build: lint test

run-lint:
	pep8 sample | tee pep8.log || true

clean-lint:
	rm -f pep8.out
	rm -f pep8.log

lint: clean-lint run-lint
	cat pep8.log > total
	cat total | sed 's/.*.py:[0-9]*:[0-9]*: //' | sed 's/(.*//' | sort > pep8.out
	cat pep8.out | uniq -c | tee -a pep8.log
	wc -l total | tee -a pep8.log
	rm total

run-test:
	nose2 -c unittest.cfg

clean-test:
	rm -rf htmlcov
	rm -f junit-results.xml
	rm -f .coverage

test: clean-test run-test
	find junit-results.xml || true