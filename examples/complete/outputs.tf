output "this_instance_id" {
  description = "The DRDS instance ID."
  value       = module.drds.this_instance_id
}

output "this_instance_zone_id" {
  description = "The instance zone ID."
  value       = module.drds.this_instance_zone_id
}

output "this_instance_vswitch_id" {
  description="The instance vswitch ID."
  value       = module.drds.this_instance_vswitch_id
}

output "this_instance_series" {
  description="User-defined DRDS instance node spec."
  value       = module.drds.this_instance_series
}

output "this_instance_specification" {
  description="User-defined DRDS instance specification."
  value       = module.drds.this_instance_specification
}