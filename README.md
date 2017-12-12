# NGINX Unit with Python

NGINX Unit is a dynamic web application server, designed to run applications in multiple languages.

# Documentation
See http://unit.nginx.org.

# Run
```
git clone https://github.com/miholeus/nginx-unit-python.git
cd nginx-unit-python
$ docker run -v `pwd`/demo:/apps -p 8300:8300 miholeus/nginx-unit-python
```

# Test
Go to container
```
docker exec -it <the-container> bash
```
Run command
```
curl -X PUT -d @/apps/python.json  '127.0.0.1:8443'

```
See http:://localhost:8300
