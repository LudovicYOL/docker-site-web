FROM nginx:alpine
MAINTAINER ludovic.yol@gmail.com

RUN apk add --no-cache git \
 && git clone https://github.com/LudovicYOL/site-web-2015.git /site-web \
 && git clone https://github.com/LudovicYOL/site-web-2018.git /site-web/beta

RUN rm -rf /usr/share/nginx/html \
 && ln -s /site-web /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
