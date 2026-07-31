# Base image
FROM node:18-alpine

# Working directory
WORKDIR /app

# Copy package files and install dependencies
COPY netflix-ui/package*.json ./
RUN npm install

# Copy all project files
COPY netflix-ui/ ./

# Build React app
RUN npm run build

# Install lightweight HTTP server to serve static files
RUN npm install -g serve

# Expose port 3000
EXPOSE 3000

# Start application
CMD ["serve", "-s", "build", "-l", "3000"]
