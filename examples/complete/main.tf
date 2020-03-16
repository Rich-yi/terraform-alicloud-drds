variable "region" {
  default = "cn-beijing"
}
variable "profile" {
  default = "default"
}
provider "alicloud" {
  region  = var.region
  profile = var.profile
}

data "alicloud_vpcs" "default" {
  is_default = true
}
data "alicloud_vswitches" "default" {
  ids = [data.alicloud_vpcs.default.vpcs.0.vswitch_ids.0]
}

module "drds" {
  source  = "../.."
  region  = var.region
  profile = var.profile

  description     = "drds_instance"
  zone_id         = data.alicloud_vswitches.default.vswitches.0.zone_id
  vswitch_id      = data.alicloud_vswitches.default.ids.0
  instance_series = "drds.sn1.8c16g"
  specification   = "drds.sn1.8c16g.32c64g"
}

