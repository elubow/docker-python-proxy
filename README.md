docker-python-proxy
===================
This is a man-in-the-middle proxy using Python 3. The proxy is from https://github.com/philippelt/simple_proxy.

## Environment Variables
========================
`PROXY_SSL` - set this to 1 to enable SSL support in the proxy
`PROXY_TARGET` - location that is being proxied to `universe.mesosphere.com`
`PROXY_LOCAL` - local host and port binding. Defaults to `localhost:8880`, but you probably want `0.0.0.0:8080`.

## Docker Environment
=====================
Assuming you setup your environment variables properly, you can start your container as follows:

```
$ docker run -p 8880:8880 elubow/docker-python-proxy
```
 or
```
$ docker run -p 8880:8880 -e PROXY_SSL=1 -e PROXY_TARGET=universe.mesosphere.com -e PROXY_LOCAL=0.0.0.0:8880 elubow/docker-python-proxy
```
