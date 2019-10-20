#! /usr/bin/env python3
#
"""
Convert a hexadecimal RGB txt file to the xcolor format 
"""
import sys

def mangle_name(l):
    color = l.split()[0:-1]                          # all but last element
    name = "".join([i.capitalize() for i in color])  # that's python!
    return name

def mangle_value(l):
    color = l.split()[-1]    #last value
    return color[1:].upper()

#main
print(r"\definecolorset{HTML}{xkcd}{}{%") 

for l in open(sys.argv[1]):
    if not l or l[0]=="#":
        continue;
    print("    %s,%s;%%" % (mangle_name(l), mangle_value(l)))

print("    LastColorToSimplifyScript,000000%")
print("}")

