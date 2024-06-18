docker logs -f --tail=20 $(docker ps -a --filter ancestor=moondancelabs/tanssi --format "{{.ID}}")
