#!/bin/sh

mkdir /site-web
git clone https://www.github.com/LudovicYOL/site-web-2018 /site-web

nginx -g 'daemon off;'
