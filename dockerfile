FROM python:3.8-slim-buster

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev build-essential
RUN pip3 install flask
RUN pip3 install Flask-Session 
RUN /usr/local/bin/python -m pip install --upgrade pip

COPY requirements.txt ./

RUN pip install -r requirements.txt

WORKDIR /app

COPY . .
# ENV HOME=/app
WORKDIR /app

# RUN apt-get python -m pip install -U pip
# RUN apt-get python -m pip install -U setuptools
# RUN pip install -r requirements.txt
EXPOSE 5000
# COPY . /app
# EXPOSE 8080
# ENTRYPOINT [ "python" ]

CMD [ "python3", "-m" , "flask"]


