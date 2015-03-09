FROM python:2.7

ENV PYTHONUNBUFFERED 1
WORKDIR /app
ADD requirements.txt /app/
RUN \
  pip install -r requirements.txt && \
  django-admin.py startproject demo .

ADD settings.py /app/demo/
ADD start.sh /app/

CMD ["bash","start.sh"]
EXPOSE 8000
