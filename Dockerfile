FROM node:8-alpine

LABEL maintainer="Elliot Shiu <elliot.shiu@bitmex.com>"

# Exit if subcommand or pipeline returns non 0 status
# Print all executed commands to shell
RUN set -ex

WORKDIR /app
COPY index.js /app/index.js

RUN node index.js
