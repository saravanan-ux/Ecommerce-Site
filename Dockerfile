# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
# This is done to install dependencies first, before copying the rest of the application files
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port the app will run on (typically 3000 for Node.js apps)
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]
# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
# This is done to install dependencies first, before copying the rest of the application files
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port the app will run on (typically 3000 for Node.js apps)
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]
