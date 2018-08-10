# Stored at netfiradev/python-alpine-aws
FROM python:alpine

RUN pip install --upgrade --no-cache-dir awsebcli
RUN pip install --upgrade --user awscli
RUN apk add git \
    docker \
    jq \
    curl \
    bash # We need a new version of bash for indirection features

RUN curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
RUN chmod 755 /usr/local/bin/ecs-cli


# Add aws to the path
ENV PATH=/root/.local/bin:$PATH

# Set default work directory
WORKDIR /


