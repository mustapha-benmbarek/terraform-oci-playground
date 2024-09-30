/*Identity Stack..*/
module "oci-identity" {
  source            = "../terraform-oci-core-identity"
  data-tenancy-id   = var.tenancy_ocid
  json-compartments = "${local.path.identity}/compartments.json"
}

/*Networking Stack..*/
module "oci-network" {
  source                = "../terraform-oci-core-network"
  data-compartments     = module.oci-identity.compartments
  json-vcns             = "${local.path.network}/vcns.json"
  json-vcn-dhcp-options = "${local.path.network}/vcn-dhcp-options.json"
}

/*Security Stack..*/

/*Developer Services Stack..*/
module "oci-developer" {
  source             = "../terraform-oci-core-developer"
  data-compartments  = module.oci-identity.compartments
  json-topics        = "${local.path.developer}/topics.json"
  json-subscriptions = "${local.path.developer}/subscriptions.json"
}

/*Analytics and AI Stack..*/
module "oci-analytics" {
  source            = "../terraform-oci-core-analytics"
  data-compartments = module.oci-identity.compartments
  json-stream-pools = "${local.path.analytics}/stream-pools.json"
  json-streams      = "${local.path.analytics}/streams.json"
}
