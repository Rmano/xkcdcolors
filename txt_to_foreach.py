#! /usr/bin/env python3
#
"""
Emit a foreach for evry color
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
print(r"\foreach \xkcdcol in {%")

allcolors=[]
for l in open(sys.argv[1]):
    if not l or l[0]=="#":
        continue;
    allcolors.append("xkcd"+mangle_name(l))

print(",\n".join(allcolors[::-1]), end="")
print("}")

