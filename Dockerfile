# Use the official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY src/package.json .
COPY src/package-lock.json .

# Install dependencies
RUN npm install

# Copy the application code to the container
COPY src/ .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the application
CMD ["node", "app.js"]
