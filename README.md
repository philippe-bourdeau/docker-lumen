# Docker-php-fpm

This project is a docker-compose boilerplate to help you launch a PHP application fast. This small docker compose stack will launch the latest php-fpm, in combination with the latest nginx, both runnning on alpine.

* Clone the project to use as your webserver.
* Add a .env file in your project. The `APPLICATION_CODE_PATH` variable should point to your php application code.
* Since we will be using docker volumes to work with the webserver in conjunction with the application server code, we need to change group ownership to GID 2048 for the application code. Here are the steps in a nutshell. 
```sh
chown 2018:2048 ${APPLICATION_CODE_PATH}
chmod 775 ${APPLICATION_CODE_PATH}
chmod g+s ${APPLICATION_CODE_PATH}
```

** The GID 2048 is arbitrary, this is the group I chose to run the php-fpm container. See the Dockerfile. (Thanks to Niels Søholm article, go read it if you want to know more about volumes and permissions : https://medium.com/@nielssj/docker-volumes-and-file-system-permissions-772c1aee23ca)
**

