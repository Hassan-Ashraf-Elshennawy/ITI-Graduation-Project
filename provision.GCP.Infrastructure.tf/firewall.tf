resource "google_compute_firewall" "allow-ssh" {
  project     = "hussin-366113"
  name        = "allow-ssh"
  network     =  google_compute_network.vpc-network-gcp.id
  direction     = "INGRESS"
  source_ranges =  [ "35.235.240.0/20" ]

  description = "Creates firewall rule for instances"
  depends_on = [
    google_compute_network.vpc-network-gcp
  ]

  allow {
    protocol  = "tcp"
    ports     = ["22"]
  }
  
}
