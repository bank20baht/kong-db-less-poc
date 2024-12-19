- create Dockerfile
- create kong.yml

```
docker build -t kong-dbless .
```

```
docker run -d --name kong-dbless -p 8000:8000 -p 8443:8443 kong-dbless
```
