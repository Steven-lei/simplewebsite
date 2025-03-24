# Use an official Nginx image as a base
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /app

# Remove the default nginx static files (from /usr/share/nginx/html)
RUN rm -rf /usr/share/nginx/html/*

# Copy the website files from the local directory to the default Nginx folder
COPY ./source/ /usr/share/nginx/html/

# Expose port 80 (default HTTP port)
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
