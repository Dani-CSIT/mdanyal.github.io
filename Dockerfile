# Use an official Nginx runtime as a base image
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the contents of the local src directory to the working directory
COPY . .

# Expose port 80
EXPOSE 80

# CMD to start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
