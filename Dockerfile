 
# Use the official Node.js image from Docker Hub
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies (npm install)
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Expose port 3000 for the application
EXPOSE 3000

# Run the application
CMD ["node", "app.js"]
