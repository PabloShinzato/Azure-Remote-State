variable "location" {

  description = "Variavel que indica os recursos construídos na infra-as-code da europa"
  type        = "string"
  default     = "West Europe"
}

variable "account_tier" {
  description = "Tier da Storage Account no Provider Azure"
  type        = string
  default     = "Standard"

}

variable "account_replication_type" {
  description = "Tipo de replicação de dados da storage Account"
  type        = string
  default     = "LRS"
  sensitive   = true
}

variable "container_imagens" {
    description = "Conteiner do Storage Account"
    type = string
    default = "imagens"
}

variable "azurem_resource_group" {
    description = "Nome do grupo de recursos"
    type = string
    default = "group_account"
  
}
