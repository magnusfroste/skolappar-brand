FROM nginx:1.27-alpine
COPY deploy/nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html robots.txt favicon.svg favicon.png apple-touch-icon.png icon-192.png icon-512.png icon-maskable-512.png site.webmanifest og.png /usr/share/nginx/html/
COPY ikoner /usr/share/nginx/html/ikoner
EXPOSE 8080
HEALTHCHECK --interval=30s --timeout=3s CMD wget -q --spider http://127.0.0.1:8080/ || exit 1
