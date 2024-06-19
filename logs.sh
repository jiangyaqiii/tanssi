container_id = "docker ps | head -n 2 | cut -d ' ' -f 1"
docker logs -f  $container_id
