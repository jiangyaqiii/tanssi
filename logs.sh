container_id=$(docker ps | head -n 2 | cut -d ' ' -f 1)
export container_id
docker logs -f  $container_id
