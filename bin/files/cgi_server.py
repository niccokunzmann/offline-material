#!/usr/bin/python2

from CGIHTTPServer import *
import BaseHTTPServer
from SocketServer import ThreadingMixIn


class MyCGIHTTPRequestHandler(CGIHTTPRequestHandler):

    cgi_directories = ['/cgi-bin']

class MyHTTPServer(ThreadingMixIn, BaseHTTPServer.HTTPServer):
    pass

def test(HandlerClass = MyCGIHTTPRequestHandler,
         ServerClass = MyHTTPServer):
    BaseHTTPServer.test(HandlerClass, ServerClass)


if __name__ == '__main__':
    test()
