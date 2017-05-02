from setuptools import setup
from GARBAGE import __version__

dependencies = [
]

# TODO
setup(
	name='GARBAGE',
	version=__version__,
	url='None',
	description='DESCRIPTION',
	author='AUTHOR',
	author_email='None',
	packages=['PACKAGES'],
	# py_modules=['MODULE'],
	install_requires=dependencies,
	entry_points={
		'console_scripts': ['GARBAGE=GARBAGE.GARBAGE.__main__:main'],
	},
	include_package_data=True
)
