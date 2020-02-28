#!/bin/sh

docker run -p 127.0.0.1:3128:3128 \
--name squid \
--restart always \
-ti alexellis2/squid:latest

