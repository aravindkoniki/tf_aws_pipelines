variable "region" {
  type        = string
  description = "Region for the resource to deploy"
  default     = "eu-west-1"
}


# Tags
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
