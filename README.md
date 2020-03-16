Terraform module which creates DRDS instance resources on Alibaba Cloud  
terraform-alicloud-drds
-------------------

English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-drds/blob/master/README-CN.md)

Terraform module which  creates DRDS instance resources on Alibaba Cloud.

These types of resources are supported:

* [alicloud_drds Instance](https://www.terraform.io/docs/providers/alicloud/r/drds_instance.html)

## Terraform versions

This module requires Terraform 0.12 and Terraform Provider AliCloud 1.57.0+.

## Usage

```hcl
module "drds"  {
  source    = "terraform-alicloud-modules/drds/alicloud"
  region    = "cn-beijing"                
  profile   = "Your-Profile-Name"
  
  description          = "drds_instance"
  zone_id              = "cn-beijing-c"
  vswitch_id           = "vsw-fhuqiexxxxxxxxxxxx"
  instance_series      = "drds.sn1.8c16g"
  specification        = "drds.sn1.8c16g.32c64g"
}
```

## Examples

* [complete](https://github.com/terraform-alicloud-modules/terraform-alicloud-drds/tree/master/examples/complete)

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`.
If you have not set them yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

Submit Issues
-------------
If you have any problems when using this module, please opening a [provider issue](https://github.com/terraform-providers/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend to open an issue on this repo.

Authors
-------
Created and maintained by He Guimin(@xiaozhu36, heguimin36@163.com) and Yi Jincheng(yi785301535@163.com) 

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)

