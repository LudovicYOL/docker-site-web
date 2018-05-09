FROM nginx:latest

RUN apt-get update && apt-get install -y \
  git

COPY copy-website-from-git /usr/local/bin/copy-website-from-git
RUN chmod +x /usr/local/bin/copy-website-from-git

CMD ["/usr/local/bin/copy-website-from-git"]

