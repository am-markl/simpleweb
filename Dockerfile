#Specify a base image
# the repository is node, the tag is alpine. Alpine is the smallest image possible for node.
FROM node:alpine

WORKDIR /usr/app

#Install some dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

#Default command
CMD ["npm", "start"]