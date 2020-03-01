# Docker web stack

This project is a docker-compose boilerplate to help launch your PHP/JS application in a more efficient and reproducible manner

## General information
* Add a .env file in your project. 
  * Set `PHP_APPLICATION_FOLDER` variable to your php application root path
  * Set `JS_APPLICATION_FOLDER` variable to your js application root path
* Add the following entry to your hosts file: `127.0.0.1 php-docker.local` (*`php-docker.local` is arbitrary, (@see nginx/site.conf)*)
* Go to `php-docker.local:8080` on your browser

## File permissions
In order to make things easier, docker container USER has the `EUID` 1000 that should match on your local machine.

## Use the stack
Php-cli and node containers are available for enabling you to run your code and manage your project without having to install anything on your machine beyond git and docker.
I suggest adding the following functions to your OS in order to interact with those more easily:

```sh
php-sh(){
 docker exec -it php-cli sh
}

node-sh(){
 docker exec -it node sh
}
```