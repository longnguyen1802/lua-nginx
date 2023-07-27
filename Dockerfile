# Use an official OpenResty base image as the starting point
FROM openresty/openresty:latest

# Expose port 80 (change the port if needed)
EXPOSE 8080

# Copy your Nginx configuration file to the container
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

# Start OpenResty
CMD ["/usr/local/openresty/nginx/sbin/nginx", "-g", "daemon off;"]