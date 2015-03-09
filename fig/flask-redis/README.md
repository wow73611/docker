

## Requirement

Install [fig](http://www.fig.sh/) that is a project from [Docker](https://www.docker.com/).
- sudo pip install -U fig


## Run a flask/redis app

The `fig.yml` will run a web and redis services.


## Usage

- Run the following command:

        fig up
        
- Run in the background:

        fig up -d

- Output environment of web service:

        fig run web env

- Stop services:

        fig stop

- Remove services:

        fig rm

- Testing:

        curl http://127.0.0.1:5000

## More

Fig has been replaced by Docker Compose, and is now deprecated. The new documentation is on the Docker website.

[`Docker Compose(http://docs.docker.com/compose/) is a tool for defining and running complex applications with Docker.
