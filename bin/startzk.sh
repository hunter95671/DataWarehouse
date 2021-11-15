#!/bin/sh
echo "start zookeeper server..."

hosts="hadoop102 hadoop103 hadoop104"

for host in $hosts
do
  ssh $host  "source /etc/profile; /opt/module/zookeeper-3.4.10/bin/zkServer.sh start"
done
