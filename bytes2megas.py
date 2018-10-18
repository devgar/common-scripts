#!/usr/bin/env python

from sys import argv


if len(argv) < 2 :
  print "Error, I need 1 argument"
  exit(1)

print int(argv[1]) / 1024.0 / 1024.0
