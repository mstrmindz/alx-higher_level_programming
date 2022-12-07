#!/usr/bin/python3
def remove_char_at(str, n):
    count = -1
    string = ""
    for i in str:
        count += 1
        if count == n:
            continue
        else:
            string += str[count]
    return string
