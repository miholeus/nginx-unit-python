import sys

def application(environ, start_reponse):
    body = sys.version.encode("utf-8")
    status = "200 OK"
    headers = [{'Content-type': 'text/plain'}]
    start_reponse(status, headers)
    return body
