resource "yandex_vpc_address" "pip" {
  count = var.create_pip ? 1 : 0

  name        = format("%s-pip", var.name)
  description = ""
  folder_id   = var.folder_id
  labels      = var.labels

  external_ipv4_address {
    zone_id = var.pip_zone_id
  }
}
