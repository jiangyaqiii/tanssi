docker inspect  $(docker ps -a --filter ancestor=moondancelabs/tanssi --format "{{.ID}}")
