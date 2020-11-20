# Use the official image as a parent image.
# Set base image (host OS)
FROM ubuntu:20.04
# FROM python:3.8

# Set the working directory.
WORKDIR /app

COPY . /app

# Copy and load files from directory
ADD . /app

# Copy the file from your host to your current location.
COPY requirements.txt .

# install dependencies
RUN apt-get -qq update -y \
  && apt-get -qq install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

RUN pip install -r requirements.txt

# command to run on container start
CMD [ "python", "./app/app.py" ]
