#!/usr/bin/python

from PyPDF2 import PdfFileWriter, PdfFileReader
from os import path
import argparse, sys


def append_pdf(input, output):
  if type(input) == str:
    fi = file(input,"rb")
    input = PdfFileReader(fi)

    for num in xrange(input.numPages):
        page = input.getPage(num)
        print "\n",fi.name,"page",num

        print page.mediaBox, page.mediaBox.getUpperRight_x()

        page.mediaBox.lowerLeft = (
            page.mediaBox.getLowerLeft_x() + 20,
            page.mediaBox.getUpperRight_y() / 2 + 20
        )

        page.mediaBox.upperRight = (
            page.mediaBox.getUpperRight_x() - 40,
            page.mediaBox.getUpperRight_y() - 100
        )


        output.addPage(page)

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
