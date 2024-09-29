/*Provider variables*/
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
