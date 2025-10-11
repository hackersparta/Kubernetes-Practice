# Stage 1: Use the official Alpine image as the base
FROM alpine:3.18

# 1. Install the Apache HTTP Server (packaged as 'apache2' in Alpine)
#    - 'apk update' updates the package lists.
#    - 'apk add apache2' installs httpd and its dependencies.
#    - 'rm -rf /var/cache/apk/*' cleans up the cache to keep the image size minimal.
RUN apk update && \
    apk add apache2 && \
    rm -rf /var/cache/apk/*

# 2. Copy the index.html file from your local directory 
#    to the default document root of httpd (/var/www).
#    The path is relative to the directory where you run 'docker build'.
COPY index.html /var/www/localhost/htdocs/index.html

# 3. Expose the default port for HTTP traffic (Port 80)
EXPOSE 80

# 4. Set the command to run when the container starts.
#    - 'httpd' is the web server executable.
#    - '-D FOREGROUND' is necessary for httpd to run in the foreground, 
#      which keeps the Docker container running.
CMD ["httpd", "-D", "FOREGROUND"]
