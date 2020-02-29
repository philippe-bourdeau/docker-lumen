# Docker-php-fpm

This project is a docker-compose boilerplate to help launch your PHP application in a more efficient manner and reproductible manner

### General information
* Add a .env file in your project. The `PHP_APPLICATION_FOLDER` variable should point to your application path
* Add the following entry to your hosts file: `127.0.0.1 php-docker.local` *`php-docker.local` is arbitrary, (@see nginx/site.conf)*
* Go to `php-docker.local:8080` on your browser

### Additional considerations

* Using the composer image is a quick and easy way to summon composer or php-cli; here are two examples
```sh
docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp composer php -v
docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp composer composer update
```

### File Permissions

 1. In order for the project to work, the php-fpm container user (EUID 1000) must have permissions to access your application code
 2. We need to make sure that the container does not run as root and that the code have restricted permissions
 3. Go read Niels Søholm [article](https://medium.com/@nielssj/docker-volumes-and-file-system-permissions-772c1aee23ca)) if you want to know more about volumes and permissions

Here is an example of what I do for a laravel project; this will create the project and transfer the ownership to user 1000 (should be your current user)

```sh 
cli () {
 docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp composer "$@"
}

cli composer create-project --prefer-dist laravel/laravel ${PHP_APPLICATION_FOLDER}
sudo chown -R 1000:1000 ${PHP_APPLICATION_FOLDER}
```
