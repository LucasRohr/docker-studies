# use this empty Dockerfile to build your assignment
# NOTE: The instructions are now in the README.md file in this directory.

# Creates image from base Node image with alpine
FROM node:6-alpine

# Run command to install tini
RUN apk add --no-cache tini

# creates directory for app files
WORKDIR /usr/src/app

# copies the package.json file for Node app
COPY package.json package.json

# Set up Node dependencies
RUN npm install \
    && npm cache clean --force

# Copy all files to the image
COPY . .

# Exposes port 80 in the container
EXPOSE 80

# Command line container start, JSON array syntax
CMD ["/sbin/tini", "--", "node", "./bin/www"]
