# Use the official Nginx image as the base
FROM nginx:latest

# Copy your HTML file into the default Nginx public directory
COPY ticket.html /usr/share/nginx/html/index.html

# Expose port 80 to access the website
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
