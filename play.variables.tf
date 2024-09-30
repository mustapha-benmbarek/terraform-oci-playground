/*Provider variables*/
variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}

/*Filepath loading...*/
locals {
  path = {
    identity  = "${path.module}/parameters/identity/"
    network   = "${path.module}/parameters/network/"
    security  = "${path.module}/parameters/security/"
    storage   = "${path.module}/parameters/storage/"
    database  = "${path.module}/parameters/database/"
    analytics = "${path.module}/parameters/analytics/"
    developer = "${path.module}/parameters/developer/"
  }
}
