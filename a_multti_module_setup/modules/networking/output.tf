output "vpc_network_id" {
  description = "ID of project VPC"
  value       = google_compute_network.vpc.id
}
output "network_self_link" {
  description = "A reference (self_link) to the VPC network"
  value       = google_compute_network.vpc.self_link
}

output "subnetwork" {
  description = "A reference (self_link) to the public subnetwork"
  value       = google_compute_subnetwork.subnet.*.self_link
}
output "subnetwork_region" {
  description = "A reference (self_link) to the public subnetwork"
  value       = google_compute_subnetwork.subnet.*.region
}