#! /usr/bin/env python3
#
"""
Convert a hexadecimal RGB txt file to the xcolor format
"""
import sys

def mangle_name(l):
    l=l.replace("/", " ")                            # do not create strange names
    color = l.split()[0:-1]                          # all but last element
    name = "".join([i.capitalize() for i in color])  # that's python!
    return name

def mangle_value(l):
    color = l.split()[-1]    #last value
    return color[1:].upper()

#main
print(r"\definecolorset{HTML}{xkcd}{}{%")

allcolors=[]
for l in open(sys.argv[1]):
    if not l or l[0]=="#":
        continue;
    allcolors.append("    %s,%s" % (mangle_name(l), mangle_value(l)))

print(";%\n".join(allcolors), end="")
print("}")

