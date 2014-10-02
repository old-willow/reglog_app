#! /usr/bin/python
# -*- coding: utf-8 -*-

try:
    f = open('result_list', 'r')

except IOError as (errno, strerror):
    print "I/O Error {0}: {1}".format(errno, strerror)
    sys.exit(1)

i = 1
new_list = []

for line in f:
    line = str(i) + line
    i += 1
    new_list.append(line)

print(new_list)

f.close()

f = open('test_results2', 'w')
for item in new_list:
    f.write(item)

f.close()
