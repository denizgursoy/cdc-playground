# cdc-playground

docker build . --tag couchbasedebezium


curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d "@my-sql-source-connector.json"
curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d "@couchbase-sink-connector.json"



https://blog.couchbase.com/kafka-connect-mysql-couchbase-debezium/
https://debezium.io/documentation/reference/1.7/tutorial.html#watching-connector-start-up