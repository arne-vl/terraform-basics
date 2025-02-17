variable "naam" {
  description = "Naam van de persoon om resource namen te genereren."
  type        = string
  default     = "jouwnaam"

  validation {
    condition     = can(regex("^[a-z0-9]+$", var.naam))
    error_message = "De naam moet in kleine letters zijn en mag geen streepjes of spaties bevatten."
  }
}
