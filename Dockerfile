FROM nginx:alpine
MAINTAINER ludovic.yol@gmail.com

RUN apk add --no-cache git

COPY ./copy-website.sh /usr/local/bin
RUN chmod +x /usr/local/bin/copy-website.sh \
  && ln -s /usr/local/bin/copy-website.sh / 

RUN rm -rf /usr/share/nginx/html \
 && ln -s /site-web /usr/share/nginx/html

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

ENTRYPOINT ["/usr/local/bin/copy-website.sh"]
