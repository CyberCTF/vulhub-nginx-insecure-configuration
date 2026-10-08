# Vulhub's nginx/insecure-configuration (in app/) runs vulhub/nginx:1 with configuration/,
# files/ and www/ mounted over /etc/nginx/conf.d, /home and the web root. Isoloom has no bind
# mounts, so this image copies the same folders to the same places, after emptying the two
# folders a mount would hide. Nothing else differs.
FROM vulhub/nginx:1
RUN rm -rf /etc/nginx/conf.d/* /usr/share/nginx/html/*
COPY app/configuration/ /etc/nginx/conf.d/
COPY app/files/ /home/
COPY app/www/ /usr/share/nginx/html/
