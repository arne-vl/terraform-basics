variable "subscription_id" {
  description = "De ID van de Azure subscription waar de resources gedeployed moeten worden."
  type        = string
}

variable "volledige_naam" {
  description = "De volledige naam van de persoon die de resources aanmaakt, vult de 'owner' tag in."
  type        = string
}

variable "naam" {
  description = "Naam van de persoon om resource namen te genereren."
  type        = string
}

variable "locatie" {
  description = "De locatie waar de resources gedeployed moeten worden."
  type        = string
  default     = "West Europe"
}
