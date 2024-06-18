
container_id=docker ps -a --filter ancestor=moondancelabs/tanssi --format "{{.ID}}"
echo $container_id
