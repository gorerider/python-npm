FROM python:3.8.3-slim-buster

# install nodejs + npm
RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs

# install serverless
RUN npm config set prefix /usr/local && \
    npm install -g serverless
