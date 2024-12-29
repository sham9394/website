# Use the devopsedu/webapp as the base image
FROM devopsedu/webapp

# Set the working directory in the container
WORKDIR /var/www/html

# Copy your PHP website files into the container
COPY ./ /var/www/html/

# Expose the default Apache port
EXPOSE 80

# Start the Apache server
CMD ["apachectl", "-D", "FOREGROUND"]
