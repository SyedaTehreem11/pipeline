# Use the lightweight Nginx image
FROM nginx:latest

# Set the working directory to Nginx's default html folder
WORKDIR /usr/share/nginx/html

# Copy your local index.html to the container
# Make sure your file is named 'index.html' in the same folder as this Dockerfile
COPY index.html .

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
