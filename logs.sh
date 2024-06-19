container_id=$(docker ps | awk 'NR==2{print $1}')
export container_id
docker logs -f $container_id

