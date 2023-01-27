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

variable "vm_names" {
    type = list(string)
}

