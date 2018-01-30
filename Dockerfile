# Derives this image from the official Node container image for their carbon release.
FROM node:carbon

# Adds local directory to /home/node/app within the container.
ADD . /home/node/app

# Tells Docker to run all future commands within /home/node/app.
WORKDIR /home/node/app

# Executes an NPM install to ensure all dependencies are installed.
RUN npm install

# Tells Docker to run 'npm start' when the container is launched.
ENTRYPOINT npm start

# Tells Docker that the application will listen on port 3000.
EXPOSE 3000
