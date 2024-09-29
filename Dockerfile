# Use the Node.js 16 image from Docker Hub
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy only package.json and package-lock.json first to leverage Docker cache
COPY package*.json ./

# Install dependencies inside the container
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Define the command to run your application
CMD ["node", "index.js"]