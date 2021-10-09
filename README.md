# Docker web stack

This project is a docker-compose boilerplate to help launch your PHP/JS application in a more efficient and reproducible manner

## General information
* @see nginx/dev.fpm.conf, but by default your server will run on localhost:80 with a basic dev configuration

## File permissions
In order to make things easier, docker container USER has the `EUID` 1000 that should match USER EUID on your local machine.

## Use the stack
* Install git
* Install docker
* Install docker-compose
* Use the following functions to interact with the code base via cli containers (composer install, phpunit, npm install, etc.)

```sh
php-sh(){
 docker exec -it php-cli sh
}

node-sh(){
 docker exec -it node-cli sh
}
```