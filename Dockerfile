# Stored at netfiradev/python-alpine-aws
FROM python:alpine

RUN pip install --upgrade --no-cache-dir awsebcli
RUN pip install --upgrade --user awscli
RUN apk add git \
    docker \
    jq \
    bash # We need a new version of bash for indirection features

# Add aws to the path
ENV PATH=/root/.local/bin:$PATH

# Set default work directory
WORKDIR /


