# Use the official NGINX image from Docker Hub
FROM nginx:latest

# Copy custom configuration file from the current directory to the NGINX configuration directory
# Uncomment the following line if you have a custom configuration file
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Optional: Add a health check to ensure the container is running properly
# HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl -f http://localhost/ || exit 1

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
