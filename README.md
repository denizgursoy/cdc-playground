# cdc-playground
```
docker build . --tag couchbasedebezium


curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d "@source-connector.json"
curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d "@sink-connector.json"


curl -v -X POST http://localhost:8091/pools/default/buckets \
-u Administrator:password \
-d name=staging \
-d bucketType=couchbase \
-d ramQuotaMB=100 \
-d durabilityMinLevel=majorityAndPersistActive


https://blog.couchbase.com/kafka-connect-mysql-couchbase-debezium/
https://debezium.io/documentation/reference/1.7/tutorial.html#watching-connector-start-up




curl  -v -X POST http://localhost:8091/node/controller/setupServices -d 'services=kv%2Cn1ql%2Cindex'

curl  -v -X POST http://localhost:8091/pools/default -d 'memoryQuota=256' -d 'indexMemoryQuota=256'

curl  -u Administrator:password -v -X POST http://localhost:8091/settings/web -d 'password=password&username=Administrator&port=SAME'


docker-compose down && docker container prune -f && docker-compose up -d
curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d "@source-connector.json" \
&& curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d "@sink-connector.json"


curl -i -X PUT -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/source-connector/config -d "@edit-source.json"
curl -i -X PUT -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/sink-connector/config -d "@edit-sink.json"

curl -X POST localhost:8083/connectors/source-connector/tasks/0/restart
curl -X POST localhost:8083/connectors/sink-connector/tasks/0/restart

curl -X GET localhost:8083/connectors/source-connector/status  
curl -X GET localhost:8083/connectors/sink-connector/status  

```