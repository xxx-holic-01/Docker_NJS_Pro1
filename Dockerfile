# specify base image  , here we use specifically alpine node 
# to avoid any errore 
FROM node:alpine
#COPY package*.json ./
# install dependencies
# here what will happen , docker file will search for package.json file
WORKDIR /usr/app


COPY ./package.json ./
RUN npm install
COPY ./ ./
# to do so dj

# default command
CMD [ "npm" , "start"]