docker-container-stop () {
  docker container stop $(docker ps -aq)
}

docker-container-remove () {
  docker container rm $(docker ps -aq)
}

docker-image-remove () {
  docker rmi $(docker images -aq)
}

docker-clean () {
  docker-container-stop;
  docker-container-remove;
  docker-image-remove;
  docker volume prune;
}

php-sh(){
 docker exec -it php-cli sh "$@"
}

node-sh(){
 docker exec -it node-cli sh "$@"
}

