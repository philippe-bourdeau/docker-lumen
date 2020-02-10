# Docker-php-fpm

This project is a docker-compose boilerplate to help you launch a PHP application fast. This small docker compose stack will launch the latest php-fpm, in combination with the latest nginx, both runnning on alpine.

* Clone the project to use as your webserver.
* Add a .env file in your project. The `APPLICATION_CODE_PATH` variable should point to your php application code.
* Change group ownership to GID 2048 for your application code

```sh
chown 2018:2048 ${APPLICATION_CODE_PATH}
chmod 775 ${APPLICATION_CODE_PATH}
chmod g+s ${APPLICATION_CODE_PATH}
```
