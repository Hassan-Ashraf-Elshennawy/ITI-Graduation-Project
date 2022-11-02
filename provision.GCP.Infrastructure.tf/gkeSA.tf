

resource "google_service_account" "gke-sa" {
  account_id   = "gke-sa"
  display_name = "GKE Service Account"
}

resource "google_project_iam_binding" "gke-sa-binding" {
  project = "hassan-ashraf"
  role    = "roles/storage.admin"
  members = ["serviceAccount:${google_service_account.gke-sa.email}"]

}


