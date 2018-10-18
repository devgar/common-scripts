#!/usr/bin/env python
 
import BaseHTTPServer, CGIHTTPServer, sys
import cgitb; cgitb.enable()  ## This line enables CGI error reporting

port = 8000
if len(sys.argv) > 1:
  port = int(sys.argv[1])
 
server = BaseHTTPServer.HTTPServer
handler = CGIHTTPServer.CGIHTTPRequestHandler
server_address = ("", port)
handler.cgi_directories = ["/"]
 
httpd = server(server_address, handler)
httpd.serve_forever()
