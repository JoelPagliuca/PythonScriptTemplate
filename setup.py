from setuptools import setup

def version():
	open('version').read()

dependencies = [
]

# TODO
setup(
	name='GARBAGE',
	version=version(),
	url='None',
	description='DESCRIPTION',
	author='AUTHOR',
	author_email='None',
	packages=['PACKAGES'],
	install_requires=dependencies,
	entry_points={
		'console_scripts': ['GARBAGE=GARBAGE.GARBAGE.__main__.main'],
	},
	include_package_data=True
)
