# Stage 1: Build the Vue.js application
FROM node:20-alpine as builder

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Build the Vue.js application
RUN npm run build

# Stage 2: Serve the built application using nginx
FROM nginx:1.25-alpine

# Copy the built Vue.js application from the previous stage to nginx's html directory
COPY --from=builder /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]
