#! /usr/bin/python
# Use: python ydler.py [OPTIONAL-RESOLUTION] [URL]

import sys
import re
import os

res = 480
command = "pip install --upgrade youtube_dl"
sudo_pass = "jp0"
auto_update = False

if os.name == "posix": command = "echo {} | sudo -S {}".format(sudo_pass, command)
if auto_update: assert os.system(command) == 0 

import youtube_dl
if re.match("^[0-9]+$", sys.argv[1]): res = sys.argv.pop(1) 

def my_hook(d):
    if d['status'] == 'finished':
        print('Done downloading, now converting ...')

ydl_opts = {
    'ignoreerrors': True,
    'verbose': True,
    'format': 'bestvideo[height<={}]+bestaudio/best[height<={}]/best'.format(res, res),       
    #'outtmpl': '%(id)s',        
    #'noplaylist' : True,        
    'progress_hooks': [my_hook],  
}

while True:
    try:
        with youtube_dl.YoutubeDL(ydl_opts) as ydl:
            ydl.download(sys.argv[1:])
    except KeyboardInterrupt: exit(0)
    except Exception as e: pass
