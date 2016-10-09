
## The horizon-base image ##

Dockerfile: base/Dockerfile
Desc: Only installs requirement packages and enviroments.

ARG
  - PASSWORD (default: root)

Usage:

    $ docker build --build-arg PASSWORD=root -t horizon-base base/
    $ docker run -d --net host horizon-base
    $ docker run -d -p 80:80 -p 11211:11211 horizon-base


## The horizon-<git-branch> image ##

Dockerfile: horizon/Dockerfile
Desc: Clone and run the horizon which you need from git branch.

ARG 
  - MEMCACHE_PORT (default: 11211)
  - APACHE_PORT (default: 80)
  - HORIZON_BRANCH (default: master)

Usage:

    $ docker build --build-arg HORIZON_BRANCH=stable/mitaka --build-arg APACHE_PORT=8888 -t horizon-mitaka horizon/
    $ docker run -d --net host horizon-mitaka
    $ docker run -d -p 80:80 -p 11211:11211 horizon-mitaka


## Quick start by docker-compose ##

# Build horizon-base, horizon-mitaka and horizon-newton images
$ docker-compose -f build-compose.yml build

# Start mitaka and newton horizon version in network of host mode
$ docker-compose up -d

