# set base image (host OS)
FROM nrel/openstudio:3.3.0

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Chicago

RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends \
	python3-setuptools \
	python3-pip \
	gcc \
	python3-dev \
	build-essential \
	python3-tk

RUN pip3 install --upgrade pip

# set the working directory in the container
WORKDIR /pypip
ADD requirements.txt .
RUN pip3 install -r requirements.txt

WORKDIR /mount






