# name
argo_etl

# description
argo_workflowを用いたETLの実装

# architecture
https://github.com/akihirosasaki/argo_etl/issues/1#issue-1260940491

# 要件定義
GCP
- project_id: test-asasaki
- region: us-central1

Cloud Storage
- bucket: test-asasaki-bucket
- directory: test.csv

BigQuery
- dataset: raw
- table: test

k8s
- 
- 


# command

```
set EMBULK_VERSION 0.9.23
docker build . -t embulk:$EMBULK_VERSION --build-arg VERSION=$EMBULK_VERSION
docker run -v (pwd)/argo:/config -v (pwd)/data/csv:/data embulk:$EMBULK_VERSION run /config/config.yml
```