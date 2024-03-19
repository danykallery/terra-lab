terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.95.0"
    }
  }
}

provider "azurerm" {
# subscription_id = 
# tenant_id = 
# client_id =  
# client_secret = 
features {
 }
}


resource "azurerm_resource_group" "test" {
    name = "test"
    location = "West Europe"

}


  


