#!/usr/bin/python3
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
