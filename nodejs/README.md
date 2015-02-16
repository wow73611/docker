
wow73611/nodejs

[`wow73611/nodejs`](https://index.docker.io/u/wow73611/nodejs) is a [docker](https://docker.io) base image.

It is latest version of [nodejs](https://nodejs.org) and [npm](https://npmjs.org) installed.

It is based on [`wow73611/python`](https://index.docker.io/u/wow73611/python) base image.

## Usage

- Run the following command in your application directory:

        docker build -t my/app .

- Run `node`

        docker run -it --rm wow73611/nodejs node

- Run `npm`

        docker run -it --rm wow73611/nodejs npm

This project heavily borrowed code from dockerfile/nodejs Docker image.
