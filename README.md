# WeltN24 Frontend CI Docker Image

## Description
This Docker image is maintained by WeltN24 GmbH Developers and its main purpose is the CI build of our Frontend Project Funkotron.

## Installed Tools
- aws
- git
- pip
- chrome latest
- node
- npm
- yarn

## How to test locally?
- Make changes in Dockerfile
- Run following command in the folder where the Dockerfile is located
- `docker run .`
- You can add debug outputs temporary at the end of the Dockerfile, e.g. `RUN node -v`

## How to release a new Version?
- This Dockerfile is automatically built and released on [Docker Hub](https://hub.docker.com/r/weltn24/up-docker-node-chrome-headless/)
- Every release will be tagged as `latest`
- If a different tagging strategy is desired [hub.docker.com](https://hub.docker.com/r/weltn24/up-docker-node-chrome-headless/) needs to be configured according to branch naming conventions
- Login to Docker Hub is done via personalized accounts, which have to be connected to [r/weltn24](https://hub.docker.com/u/weltn24/)

## How to install a specific version of node?
1. Find your desired version here: [https://deb.nodesource.com/node_8.x/pool/main/n/nodejs/](https://deb.nodesource.com/node_8.x/pool/main/n/nodejs/)
1. Replace .deb url in Dockerfile
