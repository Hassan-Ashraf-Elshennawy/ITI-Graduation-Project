resource "google_compute_network" "vpc-network-gcp" {
  project                 = "hussin-366113"
  name                    = "vpc-network-gcp"
  auto_create_subnetworks = false
}
