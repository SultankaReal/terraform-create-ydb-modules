resource "yandex_ydb_database_serverless" "nursultan_ydb" {
  name      = "nursultan-ydb-serverless"
  folder_id = var.default_folder_id
}