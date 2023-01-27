variable "environment" {
    description = "The stage of workloads that will be deployed to this network"
}

variable "cidr_range" {
  description = "The range of IP addresses for this VPC"
}

variable "regions" {
  type = list(string)
  description= "The regions where subnets should be created"
}
variable "subnet_size" {
    type = number
}

# variable "subnet_size" {
#     type = map(string)
# }

# variable "files" {
#   description = "Configuration for website files."
#   type = object({
#     terraform_managed     = bool
#     error_document_key    = optional(string, "error.html")
#     index_document_suffix = optional(string, "index.html")
#     www_path              = optional(string)
#   })
# }
