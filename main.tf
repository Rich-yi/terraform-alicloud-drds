provider "alicloud" {
  profile                 = var.profile != "" ? var.profile : null
  shared_credentials_file = var.shared_credentials_file != "" ? var.shared_credentials_file : null
  region                  = var.region != "" ? var.region : null
  skip_region_validation  = var.skip_region_validation
  configuration_source    = "terraform-alicloud-modules/drds"
}
locals {
  specification      = var.instance_series != "" || var.instance_series == "drds.sn1.4c8g" ? local.starter_version : var.instance_series == "drds.sn1.8c16g" ? local.standard_edition : var.instance_series == "drds.sn1.16c32g" ? local.enterprise_edition : var.instance_series == "drds.sn1.32c64g" ? local.extreme_edition : "null"
  starter_version    = ["drds.sn1.4c8g.8c16g", "drds.sn1.4c8g.16c32g", "drds.sn1.4c8g.32c64g", "drds.sn1.4c8g.64c128g"]
  standard_edition   = ["drds.sn1.8c16g.16c32g", "drds.sn1.8c16g.32c64g", "drds.sn1.8c16g.64c128g"]
  enterprise_edition = ["drds.sn1.16c32g.32c64g", "drds.sn1.16c32g.64c128g"]
  extreme_edition    = ["drds.sn1.32c64g.128c256g"]
}
resource "alicloud_drds_instance" "drds" {
  count                = var.create ? 1 : 0
  description          = var.description
  vswitch_id           = var.vswitch_id
  zone_id              = var.zone_id
  instance_charge_type = var.instance_charge_type
  instance_series      = var.instance_series
  specification        = var.specification != "" && contains(local.specification, var.specification) ? var.specification : "null"
}
