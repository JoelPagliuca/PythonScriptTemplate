#!/usr/bin/env python
import sys
import argparse

def main(arguments=None):
	if arguments is None:
		arguments = sys.argv[1:]
	# set up a CLI
	parser = argparse.ArgumentParser(
		description="",
		formatter_class=argparse.ArgumentDefaultsHelpFormatter
	)
	# TODO add arguments https://docs.python.org/3/library/argparse.html
	# read in the arguments
	args = parser.parse_args(arguments)