# Python Alpine AWS Docker definition

This is based on the [python:alpine](https://hub.docker.com/_/python/) container.

It's useful to use as an image inside Bitbucket Pipelines, as it lets you login to AWS, Build docker images, and push them up to ECR.

It's also useful as an aws cli container to run locally. You can do this like so:

    $ git clone git@github.com:netfira/python-alpine-aws.git
    $ cd ./python-alpine-aws
    $ docker build -t aws .
    $ winpty docker run -it aws sh
    $ aws configure

The image also contains a few additional packages to support some advanced bash scripting we do when building environment files for our containers.