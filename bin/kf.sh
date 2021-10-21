#!/bin/sh
case $1 in
"start"){
  for i in hadoop102 hadoop103 hadoop104
  do
    echo "========== $i ==========" 
    ssh $i '/opt/module/kafka/bin/kafka-server-start.sh -daemon /opt/module/kafka/config/server.properties'
  done
};;

"stop"){
  for i in hadoop102 hadoop103 hadoop104
  do
    echo "========== $i ==========" 
    ssh $i '/opt/module/kafka/bin/kafka-server-stop.sh /opt/module/kafka/config/server.properties'
  done
};;
esac
