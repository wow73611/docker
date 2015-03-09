

## Requirement

Install [fig](http://www.fig.sh/) that is a project from [Docker](https://www.docker.com/).
- sudo pip install -U fig


## Run a Django/PostgreSQl app

The `fig.yml` will run a web and db services.


## Usage

- Run the following command:

        fig up

- Run in the background:

        fig up -d

- Rebuild the Dockerfile:

        fig build

- Scale number of services:

        fig scale web=3 db=1

        NOTE: Change ports from "8000:8000" to "8000" in fig.yml

- Testing:

        curl http://127.0.0.1:8000


## More

Fig has been replaced by Docker Compose, and is now deprecated. The new documentation is on the Docker website.

[`Docker Compose(http://docs.docker.com/compose/) is a tool for defining and running complex applications with Docker.
