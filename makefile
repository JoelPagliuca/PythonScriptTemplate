.PHONY: help test clean install

PYTHON := venv/bin/python
PIP := venv/bin/pip
TEST_DIR := test
TEST_RUNNER := venv/bin/nosetests

help:		## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

test:		## Run unit tests
	${TEST_RUNNER} tests

build:		## Build the package
	${PYTHON} setup.py sdist

release:	## Make a release build
	${PYTHON} setup.py sdist -d release

environment:	## Make a virtualenv
	virtualenv --no-site-packages venv

configure:	## Install the dependencies into the virtualenv
configure: requirements.txt
	${PIP} install -r $<

dev: 		## Make environment and install packages
dev: environment configure

install: build
	${PIP} install `ls -t dist/* | tail -n 1`

uninstall:	## Remove installed package
	${PIP} uninstall GARBAGE -y

clean:		## Clean up excess files
	rm -f **/*.pyc
	rm -f *.pyc
	rm -f .coverage
	rm -f .noseids

clobber:	##
clobber: clean
	rm -f dist/*
	rm -rf *.egg-info
