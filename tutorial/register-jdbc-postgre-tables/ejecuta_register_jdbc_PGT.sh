#!/bin/bash
#
# Recorre todos los archivos del directorio actual y los muestra
#
for i in $(ls -C1 *jdbc*.json)
do
echo $i
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @$i
done

curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @register-oracle-logminer.json