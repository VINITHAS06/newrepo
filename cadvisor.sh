docker stop cadvisor
docker rm cadvisor
sudo docker container run --detach=true \
    --volume=/:/roots:ro \
    --volume=/var/run:/var/run:rw \
    --volume=/sys:/sys:ro \
    --volume=/var/lib/docker:/var/lib/docker:ro \
    --publish=8090:8080 \
    --name=cadvisor \
      google/cadvisor:latest
