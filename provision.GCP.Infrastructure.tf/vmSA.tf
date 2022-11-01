resource "google_service_account" "service-account" {
  account_id   = "service-account-id"
  display_name = "Service Account"
}

resource "google_project_iam_member" "vm-sa" {
  project = "hussin-366113"
  role    ="roles/container.admin"
  member  = "serviceAccount:${google_service_account.service-account.email}"
}


