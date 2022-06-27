FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
ADD hello.conf /nginx.conf.template
ADD index.html /usr/share/nginx/html/
CMD ["/bin/sh" , "-c" , "envsubst < /nginx.conf.template > /etc/nginx/conf.d/hello.conf && exec nginx -g 'daemon off;'"]
