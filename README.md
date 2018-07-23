# Python Alpine AWS Docker definition

This is based on the [python:alpine](https://hub.docker.com/_/python/) container.

It's useful to use as an image inside Bitbucket Pipelines, as it lets you login to AWS, Build docker images, and push them up to ECR.

It also contains a few additional packages to support some advanced bash scripting we do when building environment files for our containers.