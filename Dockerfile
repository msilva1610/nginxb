# Use the Nginx image
FROM nginx

# EXPOSE 80

# Remove the default nginx.conf
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/

# Replace with our own nginx.conf
COPY app.conf /etc/nginx/conf.d/