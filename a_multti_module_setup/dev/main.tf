terraform {
  required_version = ">= 1.0.11"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.5.0"
    }
  }
}

module "network" {
    source = "../modules/networking"
    environment = "${var.environment}"
    cidr_range = "${var.cidr_range}"
    regions = "${var.regions}"
    subnet_size = "${var.subnet_size}"
}

module "vm" {
  source = "../modules/vm"
  vm-name = var.vm_names[count.index]
  #todo get from cvpc modules output
  vm-subnetwork = module.network.subnetwork[count.index]
  vm-zone= "${module.network.subnetwork_region[count.index]}-b"
  count = length("${var.vm_names}")
  
}

# resource "local_file" "IPs" {
#     filename = "./inventory.csv"
#     content = templatefile("manifest.tftpl", { ip_addrs = module.vm.*.ip })
# }