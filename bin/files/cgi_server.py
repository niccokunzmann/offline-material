#!/usr/bin/python2

from CGIHTTPServer import *
import BaseHTTPServer


class MyCGIHTTPRequestHandler(CGIHTTPRequestHandler):

    cgi_directories = ['/cgi-bin']

def test(HandlerClass = MyCGIHTTPRequestHandler,
         ServerClass = BaseHTTPServer.HTTPServer):
    BaseHTTPServer.test(HandlerClass, ServerClass)


if __name__ == '__main__':
    test()
