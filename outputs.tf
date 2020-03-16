output "this_instance_id" {
  description = "The DRDS instance ID."
  value       = concat(alicloud_drds_instance.drds.*.id, [""])[0]
}

output "this_instance_zone_id" {
  description = "The instance zone ID."
  value = concat(alicloud_drds_instance.drds.*.description, [""])[0]
}

output "this_instance_vswitch_id" {
  description="The instance vswitch ID."
  value = concat(alicloud_drds_instance.drds.*.vswitch_id,[""])[0]
}

output "this_instance_series" {
  description="User-defined DRDS instance node spec."
  value = concat(alicloud_drds_instance.drds.*.instance_series,[""])[0]
}

output "this_instance_specification" {
  description="User-defined DRDS instance specification."
  value = concat(alicloud_drds_instance.drds.*.specification,[""])[0]
}

