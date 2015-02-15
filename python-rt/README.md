
wow73611/python-rt

[`wow73611/python-rt`](https://index.docker.io/u/wow73611/python-rt) is a [docker](https://docker.io) base image that makes it easy to dockerize a standard Python application.

It can automatically bundle a Python application and its dependencies with a single line Dockerfile.

It is based on wow73611/python base image.

## Usage

- Create a Dockerfile in your python application directory with the following content:

        FROM wow73611/python-rt

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

This project heavily borrowed code from Google's google/python-runtime Docker image.
