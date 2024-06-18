container_id = docker ps -a --filter ancestor=moondancelabs/tanssi --format "{{.ID}}"
docker logs -f --tail=20 $container_id
