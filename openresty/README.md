wow73611/openresty
---

[OpenResty](http://openresty.org/) (aka. ngx_openresty) is a full-fledged web application server by bundling the standard Nginx core, lots of 3rd-party Nginx modules.

Web developers can use the Lua programming language to script various existing nginx C modules and Lua modules.

[`wow73611/openresty`](https://index.docker.io/u/wow73611/openresty) is based on [`wow73611/ubuntu`](https://index.docker.io/u/wow73611/ubuntu) image.

## Image brief

- System is based on ubuntu
- Installed [lua 5.1](http://www.lua.org/home.html)
- Installed [luarocks](https://rocks.moonscript.org/)
- Installed [openresty 1.7.7.2](http://openresty.org/)
- Expose port 80
- A simple "hello wolrd" web server with lua

## Usage

- Run the following command:

        docker run -d -p 8080:80 wow73611/openresty

- Testing:

        $ curl -i http://127.0.0.1:8080
        HTTP/1.1 200 OK
        Server: openresty/1.7.7.1
        Date: Wed, 25 Feb 2015 03:21:20 GMT
        Content-Type: text/plain
        Transfer-Encoding: chunked
        Connection: keep-alive

        hello, world


