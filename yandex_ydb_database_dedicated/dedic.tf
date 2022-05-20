resource "yandex_ydb_database_dedicated" "nursultan-ydb-dedic" {
  name      = "nursultan-ydb-dedicated"
  folder_id = var.default_folder_id

  network_id = var.default_network_id
  subnet_ids = [var.default_subnet_id_zone_a, var.default_subnet_id_zone_b, var.default_subnet_id_zone_c]

  resource_preset_id = "medium" // The Yandex Database cluster preset. Available presets can be obtained via yc ydb resource-preset list command.

  scale_policy { // Currently, only fixed_scale is supported.
    fixed_scale {
      size = 1
    }
  }

  storage_config { //A list of storage configuration options for the Yandex Database cluster. 
    group_count     = 1 //Amount of storage groups of selected type for the Yandex Database cluster.
    storage_type_id = "ssd" //Storage type ID for the Yandex Database cluster. Available presets can be obtained via yc ydb storage-type list command.
  }

  location {
    region {
      id = "ru-central1"
    }
  }
}