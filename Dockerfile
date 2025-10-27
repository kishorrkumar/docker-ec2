# Use the official Nginx image as base
FROM nginx:latest

# Set working directory inside container
WORKDIR /usr/share/nginx/html

# Remove default nginx index page
RUN rm -rf ./*

# Copy your ticket.html file to nginx directory
COPY ticket.html .

# Expose port 80 for HTTP
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
