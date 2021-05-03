FROM node:lts-alpine

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json package-lock.json /app/

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

RUN npm install

# Bundle app source
COPY . /app

#RUN npm start
# If you are building your code for production
# RUN npm ci --only=production

EXPOSE 4200
CMD [ "npm", "start" ]
#CMD ng serve
