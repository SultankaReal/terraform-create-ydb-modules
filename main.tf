# Create Yandex Database (dedicated) resource
# Link to terraform documentation - https://registry.tfpla.net/providers/yandex-cloud/yandex/latest/docs/resources/ydb_database_dedicated

module "ydb_dedicated" {
  source = "./yandex_ydb_database_dedicated" 
}

# Create Yandex Database (serverless) resource
# Link to terraform documentation - https://registry.tfpla.net/providers/yandex-cloud/yandex/latest/docs/resources/ydb_database_serverless

module "ydb_serverless" {
  source = "./yandex_ydb_database_serverless" 
}