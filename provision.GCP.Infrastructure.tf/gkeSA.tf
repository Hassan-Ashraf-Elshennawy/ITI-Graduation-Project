resource "google_service_account" "node-service-account" {
  account_id   = "service-account-node"
  project     = "hassan-ashraf"
}

resource "google_project_iam_member" "containeradmin" {
  project     = "hassan-ashraf"
  role    = "roles/container.admin"
  member  = "serviceAccount:${google_service_account.node-service-account.email}"
}

resource "google_project_iam_member" "storageadmin" {
  project     = "hassan-ashraf"
  role    = "roles/storage.admin"
  member  = "serviceAccount:${google_service_account.node-service-account.email}"
}


