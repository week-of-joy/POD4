//--------------------------------------------------------------------
// Variables
variable "demoinfra_clientId" {}
variable "demoinfra_clientSecret" {}
variable "demoinfra_prefix" {}
variable "region" {}
variable "demoinfra_subscriptionId" {}
variable "demoinfra_tenantId" {}


//-----------------------------------------------------------------

provider "azurerm" {
  subscription_id = "${var.demoinfra_subscriptionId}"
  client_id       = "${var.demoinfra_clientId}"
  client_secret   = "${var.demoinfra_clientSecret}"
  tenant_id       = "${var.demoinfra_tenantId}"

}

//--------------------------------------------------------------------
// Modules
module "demoinfra" {
  source  = "app.terraform.io/pod4/demoinfra/azure"
  version = "1.0.1"

  clientId = "${var.demoinfra_clientId}"
  clientSecret = "${var.demoinfra_clientSecret}"
  prefix = "${var.demoinfra_prefix}"
  region = "${var.region}"
  subscriptionId = "${var.demoinfra_subscriptionId}"
  tenantId = "${var.demoinfra_tenantId}"
}