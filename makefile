build:
	python setup.py sdist

release:
	python setup.py sdist -d release

environment:
	virtualenv --no-site-packages venv # remember to source the venv/bin/activate

install: build
	pip install `ls -t dist/* | tail -n 1`

uninstall:
	pip uninstall GARBAGE -y

clean:
	rm -f **/*.pyc
	rm -f *.pyc

clobber: clean
	rm -f dist/*
	rm -rf *.egg-info