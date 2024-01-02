FROM python:3.7

WORKDIR /src/flask
COPY ./examples/tutorial /src/flask
RUN pip install -e .
RUN pip install --upgrade pip
RUN flask --app flaskr init-db
RUN sudo apt-get install python3-pytest -y
CMD flask --app flaskr run --debug --host 0.0.0.0
