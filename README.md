# Docker-php-fpm

This project is a docker-compose boilerplate to help launch your PHP application in a more efficient manner and reproductible manner

### General information
* Add a .env file in your project. The `PHP_APPLICATION_FOLDER` variable should point to your application path
* Add the following entry to your hosts file: `127.0.0.1 php-docker.local` *`php-docker.local` is arbitrary, (@see nginx/site.conf)*
* Go to `php-docker.local:8080` on your browser

### Additionnal considerations

 1. Permissions for the application code need to match with the docker container user EUID
 2. We need to make sure that the container does not run as root and that the code have restricted permissions
  3. The procedure below might be overkill: working with EUID 1000 could make things easier
  4. The EUID 2048 is arbitrary, I justed picked this one @see php-fpm Dockerfile.  (Go read Niels Søholm [article](https://medium.com/@nielssj/docker-volumes-and-file-system-permissions-772c1aee23ca)) if you want to know more about volumes and permissions
```sh
sudo chown -R ${MYUSER}:2048 ${PHP_APPLICATION_FOLDER}
sudo find ${PHP_APPLICATION_FOLDER} -type f -exec chmod 664 {} \;
sudo find ${PHP_APPLICATION_FOLDER} -type d -exec chmod 775 {} \; 
```

### Helpers

* Here is a quick and easy way to summon composer
```sh
docker run --rm -v $(pwd):/app composer install
```
