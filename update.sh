docker ps -qf "ancestor=moondancelabs/tanssi:v0.6.3"

read -p "请输入自己想设置的节点名称: " node_name
read -p "请输入自己想设置的区块生产者节点名称: " cotainer_name
read -p "请输入自己想设置的中继链名称: " relay_name
docker run -d --network="host" -v "/var/lib/dancebox:/data" \
-u $(id -u ${USER}):$(id -g ${USER}) \
moondancelabs/tanssi \
--chain=dancebox \
--name=$node_name \
--sync=warp \
--base-path=/data/para \
--state-pruning=2000 \
--blocks-pruning=2000 \
--collator \
--telemetry-url='wss://telemetry.polkadot.io/submit/ 0' \
--database paritydb \
-- \
--name=$cotainer_name \
--base-path=/data/container \
--telemetry-url='wss://telemetry.polkadot.io/submit/ 0' \
-- \
--chain=westend_moonbase_relay_testnet \
--name=$relay_name \
--sync=fast \
--base-path=/data/relay \
--state-pruning=2000 \
--blocks-pruning=2000 \
--telemetry-url='wss://telemetry.polkadot.io/submit/ 0' \
--database paritydb

rm -rf update.sh
