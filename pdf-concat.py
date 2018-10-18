#!/usr/bin/python

from pyPdf import PdfFileWriter, PdfFileReader
from os import path
import argparse, sys

def append_pdf(input, output):
  if type(input) == str:
    input = PdfFileReader(file(input,"rb"))
  [output.addPage(input.getPage(num)) for num in xrange(input.numPages)]

def parse(oName):
    files = []
    for arg in sys.argv[1:]:
        if oName == None:
            oName = arg
            continue
        if arg=="-o" or arg=="--output":
            oName = None
            continue
        if arg[-4:]!=".pdf" or not path.isfile(arg):
            print "%s is not a valid file." % arg
            exit(1)
        files.append(arg)
    return oName, files

oName, files = parse("out.pdf")

out = PdfFileWriter()

for f in files:
  append_pdf(f, out)
of = file(oName,"wb")
out.write(of)
