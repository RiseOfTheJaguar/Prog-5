FROM node:latest

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy rest of the app
COPY . .

# Expose port
EXPOSE 4000

# Start the application
CMD ["node", "index.js"]
