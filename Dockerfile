FROM node:10-alpine as builder
MAINTAINER "geovanne bruno"

WORKDIR /app
#import json
COPY package*.json /app/
#instlal requirement
RUN npm install -g @angular/cli
RUN npm install

#import project
COPY ./ /app/

#start server
CMD ng serve --host 0.0.0.0
 


