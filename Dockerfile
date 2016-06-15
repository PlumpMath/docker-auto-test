FROM gliderlabs/alpine:3.4

# Install Python 2, pip
RUN apk add --update --no-cache \
    python \
    python-dev \
    py-pip

RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
