wow73611/openresty
---

[`wow73611/openresty`](https://index.docker.io/u/wow73611/openresty) is a [docker](https://docker.io) base image.

## Image brief

- Base from ubuntu 14.04
- Install [lua 5.1](http://www.lua.org/home.html)
- Install [luarocks](https://rocks.moonscript.org/)
- Install [openresty 1.7.7.2](http://openresty.org/)
- Expose port 80
- A simple "hello wolrd" web server with lua

## Usage

- Run the following command:

        docker run -d -p 8080:80 wow73611/openresty

- Testing:

        $ curl http://127.0.0.1:8080
        HTTP/1.1 200 OK
        Server: openresty/1.7.7.1
        Date: Wed, 25 Feb 2015 03:21:20 GMT
        Content-Type: text/plain
        Transfer-Encoding: chunked
        Connection: keep-alive

        hello, world


