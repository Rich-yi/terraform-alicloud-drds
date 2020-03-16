#################
# Provider
#################

variable "profile" {
  description = "The profile name as set in the shared credentials file. If not set, it will be sourced from the ALICLOUD_PROFILE environment variable."
  type        = string
  default     = ""
}

variable "shared_credentials_file" {
  description = "This is the path to the shared credentials file. If this is not set and a profile is specified, $HOME/.aliyun/config.json will be used."
  type        = string
  default     = ""
}

variable "region" {
  description = "The region used to launch this module resources."
  type        = string
  default     = ""
}

variable "skip_region_validation" {
  description = "Skip static validation of region ID. Used by users of alternative AlibabaCloud-like APIs or users w/ access to regions that are not public (yet)."
  type        = bool
  default     = false
}

##################
# drds instance
##################
variable "create" {
  description = "Whether to create drds. Default to true."
  type        = bool
  default     = true
}

variable "description" {
  description = "Description of the DRDS instance, This description can have a string of 2 to 256 characters."
  type        = string
  default     = "TF-Drds"
}

variable "zone_id" {
  description = "The Zone to launch the DRDS instance."
  type        = string
  default     = ""
}

variable "instance_charge_type" {
  description = " Valid values are PrePaid, PostPaid, Default to PostPaid."
  type        = string
  default     = "PostPaid"
}

variable "vswitch_id" {
  description = "The VSwitch ID to launch in."
  type        = string
  default     = ""
}

variable "instance_series" {
  description = "User-defined DRDS instance node spec."
  type        = string
  default     = ""
}

variable "specification" {
  description = "User-defined DRDS instance specification."
  type        = string
  default     = ""
}