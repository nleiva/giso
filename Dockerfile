FROM ubuntu:16.04
LABEL maintainer="nleiva@cisco.com"

# Install Python
RUN \
  apt-get update && \
  apt-get install -y python python-pip apt-utils 

# Install System dependencies
RUN apt-get install -y mkisofs cpio

ADD gisobuild.py /

# Update PIP
RUN pip install setuptools pip --upgrade --force-reinstall

# Install Python dependencies
RUN pip install pyyaml

