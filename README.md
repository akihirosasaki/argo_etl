# name
argo_etl

# description
argo_workflowを用いたETLの実装

# architecture
https://github.com/akihirosasaki/argo_etl/issues/1#issue-1260940491

# 要件定義
GCP
- project_id: {gcp-project-id}
- region: {region}

Cloud Storage
- bucket: {GCS_BUCKET_NAME}
- directory: customer.csv

BigQuery
- dataset: raw
- table: test