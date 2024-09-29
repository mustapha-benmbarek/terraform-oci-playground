/*Networking Stack..
variable "TENANCY_OCID" {}

module "oci-network" {
  source = "../terraform-oci-core-network"

  TENANCY_OCID = var.TENANCY_OCID

  //identity - to be changed dlater
  //json-compartments = "${local.path.identity}/compartments.json"
  json-vcns = "${local.path.network}/vcns.json"
  //json-vcn-subnets           = "${local.path.network}/vcn-subnets.json"
  //json-vcn-internet-gateways = "${local.path.network}/vcn-internet-gateways.json"
  //json-vcn-nat-gateways      = "${local.path.network}/vcn-nat-gateways.json"
  //json-vcn-service-gateways = "${local.path.network}/vcn-service-gateways.json"
  json-vcn-dhcp-options = "${local.path.network}/vcn-dhcp-options.json"
  //json-vcn-route-tables      = "${local.path.network}/vcn-route-tables.json"
  //json-vcn-security-lists           = "${local.path.network}/vcn-security-lists.json"
  //json-cluster-placement-groups     = "${local.path.network}/cluster-placement-groups.json"
  //json-customer-premises-equipments = "${local.path.network}/customer-premises-equipments.json"
}

/*
module "oci-identity" {
  source            = "../terraform-oci-core-identity"
  json-compartments = "${local.path.identity}/compartments.json"
}*/

/*
module "oci-network" {
  source                = "../terraform-oci-core-network"
  TENANCY_OCID          = var.TENANCY_OCID
  json-vcns             = "${local.path.network}/vcns.json"
  json-vcn-dhcp-options = "${local.path.network}/vcn-dhcp-options.json"
}*/

module "oci-developer" {
  source             = "../terraform-oci-core-developer"
  json-topics        = "${local.path.developer}/topics.json"
  json-subscriptions = "${local.path.developer}/subscriptions.json"
}

/*
module "oci-analytics" {
  source            = "../terraform-oci-core-analytics"
  json-stream-pools = "${local.path.analytics}/stream-pools.json"
  json-streams      = "${local.path.analytics}/streams.json"
}*/
