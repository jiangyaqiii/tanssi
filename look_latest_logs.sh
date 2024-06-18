docker logs -n 100 $(docker ps -a --filter ancestor=moondancelabs/tanssi --format "{{.ID}}")
