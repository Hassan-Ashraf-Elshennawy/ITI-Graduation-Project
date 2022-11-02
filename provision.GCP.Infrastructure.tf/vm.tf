resource "google_compute_instance" "private-vm" {
  name         = "private-vm"
  machine_type = "e2-micro"
  zone         = "${google_compute_subnetwork.managment-subnet.region}-a"
  allow_stopping_for_update = true
  service_account {
    email = google_service_account.service-account.email
    scopes = [ "cloud-platform" ]

  }
  depends_on = [
   google_compute_network.vpc-network-gcp,
    google_compute_firewall.allow-ssh
  ]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }


  network_interface {
    network =google_compute_network.vpc-network-gcp.id
    subnetwork =google_compute_subnetwork.managment-subnet.id
  }
}





