# if our base image will be ubuntu 
# then we have to put all the commands in RUN to install first Node in Uubuntu 

# But here we are using Node as a Base Image 

FROM node

COPY package.json package.json
COPY package-lock.json package-lock.json
COPY index.js index.js

RUN npm install

ENTRYPOINT [ "node" , "index.js" ]