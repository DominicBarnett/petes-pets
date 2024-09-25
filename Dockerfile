# Use the official Node.js LTS (Long Term Support) image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of your application code to the working directory
COPY . .

# Expose the port your app runs on (change if it's different)
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]