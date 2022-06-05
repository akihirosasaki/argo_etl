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