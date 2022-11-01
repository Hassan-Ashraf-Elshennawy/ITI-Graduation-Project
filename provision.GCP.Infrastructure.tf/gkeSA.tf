resource "google_service_account" "node-service-account" {
  account_id   = "service-account-node"
  project     = "hussin-366113"
}

resource "google_project_iam_member" "containeradmin" {
  project     = "hussin-366113"
  role    = "roles/container.admin"
  member  = "serviceAccount:${google_service_account.node-service-account.email}"
}

resource "google_project_iam_member" "storageadmin" {
  project     = "hussin-366113"
  role    = "roles/storage.admin"
  member  = "serviceAccount:${google_service_account.node-service-account.email}"
}


