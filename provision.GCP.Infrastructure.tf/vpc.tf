resource "google_compute_network" "vpc-network-gcp" {
  project                 = "hassan-ashraf"
  name                    = "vpc-network-gcp"
  auto_create_subnetworks = false
  mtu                     = 1460

}

