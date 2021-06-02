
From node:8

# Create app directory
WORKDIR /usr/src/app

#Install app dependencies
# A wildcard is used to ensure both packages.json AND package-lock npm-shrinkwrap.json
COPY package*.json ./
COPY npm-shrinkwrap.json ./

RUN npm install
# If you are building your code for production
# Run npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8082
CMD ["npm", "start" ]
