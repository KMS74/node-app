# base image
FROM node:19-alpine 

# copy package.json to the container in the app directory
COPY package.json /app/
# copy all the files in the current directory to the container in the app directory
COPY . /app/

# set the working directory in the container
WORKDIR /app

# install app dependencies in the container
RUN npm install



# start the app
CMD ["npm", "start"]


