spine-example-node
==================

This repo contains an example application designed to run on
[Spine](https://spi.ne), built with Node.js and Express 4.

Deploying to Spine
------------------

Once you've created a Spine account, be certain that you've installed the
[Spine CLI](https://spi.ne/cli).

After installing the CLI, you can bring this application up with a single command:

```bash
$ spine deploy
```

To access your new application, ask Spine for your user info and note the ```subdomain```:

```bash
$ spine user info
email: phil@collins.com
name: philcollins
docker_hub_username: philcollins
subdomain: demo
```

You can now access your application here:

```bash
http://example-<subdomain>.spi.ne
```

Running Locally
---------------

First, be certain that you've installed [Node.js](https://nodejs.org/) using
the instructions on their site.

Once you've done so, you can run this application locally with the following
commands:

```bash
$ git clone https://github.com/getspine/spine-example-node
$ cd spine-example-node
$ npm install
$ npm start
```

Building a Docker Container
---------------------------

If you'd like to modify your running container, you'll need to build and push a new image
to the [Docker Hub](https://hub.docker.com).

If you haven't already installed Docker, you can obtain it
[right here](https://www.docker.com/get-docker).

Once Docker is installed, be certain that you're logged in:

```bash
$ docker login
```

After you've successfully logged in, you can build and push your image with the
following commands:

```bash
$ export DOCKER_ID_USER="your_docker_username"
$ docker build -t ${DOCKER_ID_USER}/example .
$ docker push ${DOCKER_ID_USER}/example
```

**Please note**: you'll need to change the ```image``` field within your
```Backbone``` file to point to the image name you pushed up.
