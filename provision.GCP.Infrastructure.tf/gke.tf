
resource "google_container_cluster" "app-cluster" {
  project  = "hassan-ashraf" 
  name     = "gke-cluster"
  location = "us-central1-a"

  ip_allocation_policy {

  }
    
 private_cluster_config {
    enable_private_endpoint =false
    enable_private_nodes    = true
    master_ipv4_cidr_block  = "172.16.1.0/28"
  }

  remove_default_node_pool = true
  initial_node_count = 1
  network                  = google_compute_network.vpc-network-gcp.id
  subnetwork               = google_compute_subnetwork.restricted-subnet.id

   depends_on = [
    google_compute_network.vpc-network-gcp
 ]

  master_authorized_networks_config {
    cidr_blocks {
      cidr_block   = "10.0.0.0/24"
      display_name = "managment-cidr-range"
    }
  }
}

resource "google_container_node_pool" "linux_pool" {
  name               = "linux-pool"
  project            = google_container_cluster.app-cluster.project

  cluster            = google_container_cluster.app-cluster.name
  location           = google_container_cluster.app-cluster.location
  
  node_count = 1
  node_config {

    preemptible  = true
    machine_type = "e2-medium"
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.node-service-account.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
}
}





  


 



