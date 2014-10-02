#! /usr/bin/python
# -*- coding: utf-8 -*-

import MySQLdb as mysql
import sys

f = open('my_list.txt', 'r')

ls = []
result_list = []
tmp_string = ''

# Cutting of the trailing/unneeded part from a file '\r\n'
for i in f:
    pos = i.find('\r')
    ls.append(i[:pos])

# Creating result list, changing the order in strings
for l in ls:
    pos = l.find(';')
    tmp_string += l[pos+1:]
    tmp_string += ';'
    tmp_string += l[:pos].title()

    result_list.append(tmp_string)
    tmp_string = ''

# Writing result in to the file
try:
    wf = open('result_list', 'w')

    for l in result_list:
        wf.writelines(l)
        wf.write('\n')

except IOError as (errno, strerror):
    print "I/O Error {0}: {1}".format(errno, strerror)

print result_list

f.close() # closing source file.
wf.close() # closing result file.


## Inserting data to database from result file handler.
db_host = 'localhost'
db_name = 'login_register'
db_user = 'root'
db_password = 'root'

#sql = """
#DROP TABLE IF EXISTS country
#""" 

#sql1 = """
#CREATE TABLE country (
#id_country INT(9) NOT NULL AUTO_INCREMENT,
#country_code VARCHAR(3) NOT NULL,  
#country_name VARCHAR(50) NOT NULL,  
#PRIMARY KEY (id_country)
#)
#""" 

# Populate table with data.
sql2 = """
LOAD DATA INFILE '/home/robi/www/django/reglog/misc/result_list'
INTO TABLE register_country
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
(country_code, country_name)
""" 

con = None

try:
    con = mysql.connect(db_host, db_user, db_password, db_name)

except mysql.Error, e:
    print "Error {0} {1}".format(e.args[0], e.args[1])
    sys.exit(1)

else:

    cur = con.cursor()

#    cur.execute(sql)
#    cur.execute(sql1)
    cur.execute(sql2)

finally:
    if con:
        con.close()

