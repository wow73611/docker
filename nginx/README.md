

## wow73611/nginx

[`wow73611/nginx`](https://index.docker.io/u/wow73611/nginx) is based on [`wow73611/ubuntu`](https://index.docker.io/u/wow73611/ubuntu) image.


## What is Nginx?

Nginx (pronounced "engine-x") is an open source reverse proxy server for HTTP, HTTPS, SMTP, POP3, and IMAP protocols, as well as a load balancer, HTTP cache, and a web server (origin server). The nginx project started with a strong focus on high concurrency, high performance and low memory usage.


## Usage

- Run the following command:

        docker run -d -p 8080:80 wow73611/nginx

- Testing:

        $ curl -i http://127.0.0.1:8080
        
        Output:

            Welcome to nginx on Debian!

