FROM node:18
LABEL description="Script written in TypeScript that uploads CGM readings from LibreLink Up to Nightscout"

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Run tests
RUN npm run test

# Bundle app source
COPY . /usr/src/app

CMD [ "npm", "start" ]
