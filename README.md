# Docker web stack

This is a docker-compose boilerplate to help quickstart PHP applications in a more efficient and reproducible manner

## General information
* Nginx runs on localhost:80 by default; @see nginx/*.conf

## File permissions
EUID in container = 1000 : should match EUID on your localhost to prevent any permissions issues

## Use the stack
* Install git
* Install docker
* Install docker-compose
* Check out bin/tools.sh for quick shorthands