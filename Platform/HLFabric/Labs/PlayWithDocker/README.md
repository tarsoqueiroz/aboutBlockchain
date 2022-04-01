# Tests

```shell

docker ps -a
docker run -d -p 80:80 docker/getting-started
docker container ls
docker rm d6f -f
docker run -d -p 80:80 docker/getting-started
docker container ls
docker exec -it silly_montalcini /bin/sh
docker container ls
docker container stop silly_montalcini 
docker container rm silly_montalcini 
docker container ls -a

curl --unix-socket /var/run/docker.sock http://localhost/version

docker run --privileged --name tqdind -d docker:dind
docker container ps
docker exec -it tqdind /bin/sh
docker container ps
docker inspect tqdind 
docker image inspect docker:dind 
docker image history docker:dind 
docker exec -it tqdind /bin/sh
docker ps 

docker exec -it tqdind /bin/sh

docker container ps -as
docker exec -it tqdind /bin/sh


```
