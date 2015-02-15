
wow73611/python

[`wow73611/python`](https://index.docker.io/u/wow73611/python) is a [docker](https://docker.io) base image.

The stable version of [python](http://python.org) installed from ubuntu 14.04 and [pip](https://pip.pypa.io/en/latest/) and [virtualenv](https://virtualenv.pypa.io/) installed from [PyPI](https://pypi.python.org/pypi).

## Usage

- Create a Dockerfile in your python application directory with the following content:

        FROM wow73611/python
        WORKDIR /app
        RUN virtualenv /env
        ADD requirements.txt /app/requirements.txt
        RUN /env/bin/pip install requirements.txt
        ADD . /app
        CMD []
        ENTRYPOINT ["/env/bin/python", "/app/main.py"]

- Run the following command in your application directory:

        docker build -t my/app .


## Notes

The image assumes that your application:

- has a [`requirements.txt`](https://pip.pypa.io/en/latest/user_guide.html#requirements-files) file to specify its dependencies
- listens on port `8080`
- has a `main.py` script as entrypoint 
- or defines `ENTRYPOINT ["/env/bin/python", "/app/other.py"]` in its `Dockerfile`

When building your application docker image, `ONBUILD` triggers:

- Create a new virtualenv under the `/env` directory in the container
- Fetch the dependencies listed in `requirements.txt` into the virtualenv using `pip install` and leverage docker caching appropriately
- Copy the application sources under the `/app` directory in the container

This project heavily borrowed code from Google's google/python Docker image.
