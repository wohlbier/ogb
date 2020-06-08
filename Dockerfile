FROM nvcr.io/nvidia/pytorch:20.02-py3
ARG PROXY
ENV http_proxy $PROXY
ENV https_proxy $PROXY

WORKDIR /code
ADD . .

RUN apt-get update && apt-get install -y --no-install-recommends \
    emacs \
    python-setuptools

RUN python setup.py install