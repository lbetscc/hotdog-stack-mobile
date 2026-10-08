# Serves Chicago Dog Stack as a static site, for hosts that run containers (such as ngrok Ship).
# nginx-unprivileged runs as a non-root user and listens on port 8080.
FROM nginxinc/nginx-unprivileged:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html manifest.webmanifest sw.js icon.svg /usr/share/nginx/html/
COPY icons/ /usr/share/nginx/html/icons/
EXPOSE 8080
