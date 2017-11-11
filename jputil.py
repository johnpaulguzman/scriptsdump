#!/usr/bin/env python
# -*- coding: utf-8 -*-
### SETUP NOTES: chmod +x jputil.py && sudo pip install pyperclip && ./jputil.py
import pyperclip

try: input = raw_input
except NameError: pass

def set_clipboard(data):
    pyperclip.copy(data)

def get_clipboard():
    return pyperclip.paste()

def split_lines(data):
    return data.splitlines()

def join_lines(datas):
    return "\n".join(datas)

if  __name__ == "__main__":
    border_texts = "=" * 20
    print("{} READY {}".format(*([border_texts]*2)))
    while input() != "0":
        latext = get_clipboard()
        print("{} GET TEXT {}".format(*([border_texts]*2)))
        print(latext)
        new_latext = latext.replace("(", "\ml(").replace(")", "\mr)").replace("\Bigg\ml(", "\Bigg(").replace("\Bigg\mr)", "\Bigg)")
        print("{} SET TEXT {}".format(*([border_texts]*2)))
        print(new_latext)
        set_clipboard(new_latext)
        for idx, line in enumerate(split_lines(new_latext)):
            lpars = line.count("ml(")
            rpars = line.count("mr)")
            if lpars != rpars:
                print("Parenthesis mismatch at line {}: {} != {}".format(idx, lpars, rpars))
                print("{}\n{}\n{}".format(border_texts, line, border_texts))

## OLD

parse_type = 2

def remove_non_ascii(text):
    return unidecode(unicode(text, encoding = "utf-8"))

def parse(data):
    indent = " "*4
    level = 3
    x = str(data.encode('ascii', errors='ignore')).replace("b'","").replace("'","")
    y = x.replace("t", "t]").replace("SPR", "S[").replace("_", "").replace(" ", "")
    if "{" in y and "}" in y: z = y[y.index("{")+1:y.index("}")].split(",")
    else: z = y.split(",")
    parsed = ""
    if "{" in y and "}" in y: parsed += "([\n"
    for lol in z: 
        if "{" in y and "}" in y: parsed += indent*(level+1) + r'f"' + lol + r'",' + "\n"
        else: parsed += r'f"'+lol+r'"'
    if "{" in y and "}" in y: parsed += indent*(level+1) + "])"
    parsed = parsed.replace("S", "{S").replace("t]", "t]}")
    return parsed

 
def dict_replace(string):
    replace_dict = { #4 products
        "1234t" : "15", 
        "234t" : "14", 
        "134t" : "13", 
        "124t" : "12", 
        "34t" : "11", 
        "24t" : "10", 
        "14t" : "9", 
        "123t" : "8", 
        "23t" : "7", 
        "13t" : "6", 
        "12t" : "5", 
        "4t" : "4", 
        "3t" : "3", 
        "2t" : "2", 
        "1t" : "1",}
    replace_dict_LOL = { #3_1 products
        "33t" : "10",
        "22t" : "9",
        "11t" : "8",
        "123t" : "7", 
        "23t" : "6", 
        "13t" : "5", 
        "12t" : "4", 
        "3t" : "3", 
        "2t" : "2", 
        "1t" : "1",}
    replace_dict = { #3_2 products
        "333" : "13",
        "222" : "12",
        "111" : "11",
        "33t" : "10",
        "22t" : "9",
        "11t" : "8",
        "123t" : "7", 
        "23t" : "6", 
        "13t" : "5", 
        "12t" : "4", 
        "3t" : "3", 
        "2t" : "2", 
        "1t" : "1",}
    replace_dict = { #2 products
        "12t" : "3", 
        "2t" : "2", 
        "1t" : "1",}
    for key, value in replace_dict_LOL.items(): string = string.replace(key, value)
    return string

while True:
    try:
        data = get_clipboard()
        if r'f"' in data:
            print("Already parsed")
            continue
        parsed = parse(data)
        print(parsed)
        replaced = dict_replace(parsed)
        print(replaced)
        set_clipboard(replaced)
    except KeyboardInterrupt:
        exit()
    except Exception as e:
        print(e)
        pass