build:
	python3 setup.py sdist

environment:
	virtualenv --no-site-packages venv # remember to source the venv/bin/activate

install: build
	pip3 install `ls dist/* | tail -n 1`

uninstall:
	pip3 uninstall your-python-script -y # TODO change

clean:
	rm -f **/*.pyc

clobber: clean
	rm -f dist/*
	rm -rf *.egg-info