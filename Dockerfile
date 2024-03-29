FROM python:3.7
WORKDIR /src/flask
COPY . /src/flask
RUN pip install -e .
RUN pip install --upgrade pip
RUN flask --app flaskr init-db
RUN pip install '.[test]'
RUN apt-get update && apt-get install -y python3-pytest
CMD flask --app flaskr run --debug --host 0.0.0.0
