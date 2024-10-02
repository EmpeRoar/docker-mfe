# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the HTML file to the appropriate location
COPY html /usr/share/nginx/html

# Expose port 80
EXPOSE 80
