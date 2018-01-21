import urllib, time
a=urllib.urlopen('http://www.jsoftware.us/vol12/vol12no12-contents.pdf')
while True: 
    try: print(a.getcode())
    except Exception as e: print(e)
    time.sleep(300)
