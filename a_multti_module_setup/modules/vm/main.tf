variable "vm-name" {
  description = "Name for the VM"
}
variable "vm-subnetwork" {
  description = "Name for the subnetwork"
}

variable "vm-zone" {
  description = "Name for the zone"
}

resource "google_compute_instance" "vm" {
  name         = var.vm-name
  machine_type = "f1-micro"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  zone=var.vm-zone
  
  network_interface {
    #network = var.vpc-id
    subnetwork = var.vm-subnetwork
    
  }
}