# Use the official Node.js image as the base image
FROM node:14

# Copy package.json and package-lock.json to the working directory
COPY package.json .


# Install dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Define the command to run the application
CMD ["node", "app.js"]
