#!/usr/bin/python3
a = ""
for i in reversed(range(96, 123)):
    print("{}".format(a), end="")
    if i % 2 == 0:
        a = chr(i)
    else:
        a = chr(i - 32)
