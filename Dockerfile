FROM node:10-alpine as builder

MAINTAINER "geovanne queiroz"

WORKDIR /app
#install git
RUN apk add git

#import projetct
RUN git clone https://github.com/creativetimofficial/light-bootstrap-dashboard-angular2.git
#instlal requirement
RUN cp -R light-bootstrap-dashboard-angular2/* /app
RUN npm install -g @angular/cli
RUN npm install

#start server
CMD ng serve --host 0.0.0.0
 


