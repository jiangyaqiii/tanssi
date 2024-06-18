#!/bin/bash

# 获取与 moondancelabs/tanssi 镜像关联的容器 ID
container_id=$(docker ps -a --filter ancestor=moondancelabs/tanssi --format "{{.ID}")

# 检查是否找到容器
if [ ! -z "$container_id" ]; then
    # 输出找到的容器 ID
    echo "Found container ID: $container_id"
    
    # 查看容器日志
    docker logs -f --tail=20 $container_id
    
else
    echo "No containers found using moondancelabs/tanssi image."
fi
