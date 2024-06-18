# tanssi

======部署tanssi节点===================================================

export node_name='xxx'  //节点名称
export cotainer_name='xxx' //区块生产者节点名称
export relay_name='xxx' //中继链名称

wget -O start.sh https://raw.githubusercontent.com/jiangyaqiii/tanssi/web/start.sh && chmod +x start.sh && ./start.sh

=====================================================

======查看节点日志=====================================================

curl -s https://raw.githubusercontent.com/jiangyaqiii/tanssi/web/logs.sh |bash

================================================================

=============获取会话密钥===========================

curl -s https://raw.githubusercontent.com/jiangyaqiii/tanssi/web/get_key.sh |bash

=========================================================================
