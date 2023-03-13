variable "name_prefix" {
  type        = string
  description = "Prefix name to use for the resources names"
  default = "bvco"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Resource tags"
}