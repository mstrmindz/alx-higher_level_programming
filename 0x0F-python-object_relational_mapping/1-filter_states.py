#!/usr/bin/python3
<<<<<<< HEAD
"""Lists states"""

import MySQLdb
from sys import argv

if __name__ == "__main__":
    conn = MySQLdb.connect(host="localhost", port=3306, user=argv[1],
                           passwd=argv[2], db=argv[3], charset="utf8")
    cur = conn.cursor()
    cur.execute("SELECT * FROM states ORDER BY states.id ASC")
    query_rows = cur.fetchall()
    for row in query_rows:
        if row[1].startswith("N"):
            print(row)
    cur.close()
    conn.close()
=======
import MySQLdb
import sys

if __name__ == "__main__":
    username = sys.argv[1]
    password = sys.argv[2]
    database = sys.argv[3]

    # Open database connection
    db = MySQLdb.connect(host="localhost", user=username, passwd=password, db=database, port=3306)

    # prepare a cursor object using cursor() method
    cursor = db.cursor()

    # execute SQL query using execute() method.
    cursor.execute("SELECT * FROM states WHERE name LIKE 'N%' ORDER BY id ASC")

    # Fetch all the rows in a list of lists.
    results = cursor.fetchall()

    # print the rows
    for row in results:
        print(row)

    # disconnect from server
    db.close()
>>>>>>> 5f87ce06f735bc4165f0067b701af004a37f5a1b
