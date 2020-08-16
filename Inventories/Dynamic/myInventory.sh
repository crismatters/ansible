#!/bin/bash
echo -n {\"group\":{
echo -n \"hosts\":[
ARRAY=("cristobalsilva2c.mylabserver.com" "cristobalsilva3c.mylabserver.com" "cristobalsilva4c.mylabserver.com" "127.0.0.1")

for i in ${ARRAY[@]}
do
  ping -c 1 $i &> /dev/null
  if [ "$?" = 0 ]
  then
    if [ "$i" != ${ARRAY[0]} ]
    then
      echo -n ,
    fi
    echo -n \"$i\"
  fi
done
echo -n ],\"vars\":{}},
echo -n \"meta\":{\"hostvars\":{}}}
