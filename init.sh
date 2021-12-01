curl  -v -X POST http://localhost:8091/node/controller/setupServices -d 'services=kv%2Cn1ql%2Cindex'
curl  -v -X POST http://localhost:8091/pools/default -d 'memoryQuota=1256' -d 'indexMemoryQuota=1256'
curl  -u Administrator:password -v -X POST http://localhost:8091/settings/web -d 'password=password&username=Administrator&port=SAME'

curl -v -X POST http://localhost:8091/pools/default/buckets \
-u Administrator:password \
-d name=staging \
-d bucketType=couchbase \
-d ramQuotaMB=600 \
-d durabilityMinLevel=majorityAndPersistActive

curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d "@source-connector.json"
curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d "@sink-connector.json"
