# Use Nginx to serve static files
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx HTML files
RUN rm -rf ./*

# Copy all project files (HTML, CSS, JS)
COPY . .

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
