# Use the official image as a parent image.
# Set base image (host OS)
FROM python:3.8

# Set the working directory.
WORKDIR /code

# Copy and load files from directory
ADD . /app/

# Copy the file from your host to your current location.
COPY app/requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# Copy the file from your host to your current location.
COPY app/src/ .

# command to run on container start
CMD [ "python", "./app.py" ]
