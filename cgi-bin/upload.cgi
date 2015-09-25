#!/usr/bin/env python

# from http://webpython.codepoint.net/cgi_file_upload

import cgi, os
import cgitb; cgitb.enable()
import shutil

try: # Windows needs stdio set for binary mode.
    import msvcrt
    msvcrt.setmode (0, os.O_BINARY) # stdin  = 0
    msvcrt.setmode (1, os.O_BINARY) # stdout = 1
except ImportError:
    pass

form = cgi.FieldStorage()

# A nested FieldStorage instance holds the file
fileitem = form['file']

# Test if the file was uploaded
if fileitem.filename:
    
    # strip leading path from file name to avoid directory traversal attacks
    filename = os.path.basename(fileitem.filename)
    open_file = open('/var/www/offline-material/uploads/' + filename, 'wb')
    c = True
    while c:
        c = fileitem.file.read(1024)
        open_file.write(c)
    open_file.close()
    message = 'The file "' + filename + '" was uploaded successfully.'
   
else:
    message = 'No file was uploaded.'
   
print """\
Content-Type: text/html\n
<html><body>
<p>%s</p>
<a href="/upload">Upload an other file</a><br/>
<a href="/uploads">View Uploads</a>
</body></html>
""" % (message,)
