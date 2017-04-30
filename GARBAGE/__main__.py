#!/usr/bin/env python

def main(arguments=None):
	if arguments is None:
		arguments = sys.argv[1:]
	# set up a CLI
	parser = argparse.ArgumentParser(
		description="",
		formatter_class=argparse.ArgumentDefaultsHelpFormatter
	)