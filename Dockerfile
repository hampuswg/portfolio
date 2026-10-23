FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/
COPY work/ /usr/share/nginx/html/work/
COPY sv/ /usr/share/nginx/html/sv/
COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 80
