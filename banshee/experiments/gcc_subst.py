#!/usr/bin/python
import sys
import os
import string
import random

# A file is a C source file if it ends in '.c', doesn't start with
# '-', and corresponds to a file on disk
def is_c_file(nextarg):
    return (os.path.isfile(nextarg) and nextarg[-2:] == '.c' and not nextarg[0] == '-')

# Convert a list to a space-separated string
def list_to_string_nolf(list):
    if (len(list) == 0):
	return ""
    result = list[0]
    for elt in list[1:]:
	result = result + " " + elt
    return result

# Given a filename, return a canonical string suitable for use as a C
# identifier
def get_canon_ident(filename):
    output = os.popen("md5 -s \"%s\"" % filename)
    return output.readlines()[0].split()[3]
    
# Return true if the line 'appendline' was already appended to the file
def already_added(appendline, filename):
    output = os.popen("tail -1 %s" % filename)
    lastline = output.readlines()[0][:-1]
    if (lastline == appendline):
	return True
    return False

# Add a string variable declaration to the end of a file. If the file
# already ends with such a declaration, this won't add another
def modify_file(filename):
    appendline = "const char *CANON_IDENT_%s = \"CANON_IDENT_%s\";" % (get_canon_ident(filename), filename)
    if (not already_added(appendline,filename)):
	os.system("echo \"const char *CANON_IDENT_%s = \\\"CANON_IDENT_%s\\\";\" >> %s" % (get_canon_ident(filename), filename, filename))

def main():
    for arg in sys.argv[1:]:
	if (is_c_file(arg)):
	    modify_file(arg)
    os.system("gcc %s" % list_to_string_nolf(sys.argv[1:]))

if __name__ == "__main__":
    main()
