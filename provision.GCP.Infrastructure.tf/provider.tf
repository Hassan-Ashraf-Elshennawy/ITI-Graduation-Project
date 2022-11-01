provider "google" {
  credentials = file("/home/hussin/gcp project/provision.Gcp.tf/hussin-366113-00b7255c3b88.json")
  project     = "hussin-366113"
  region      = "us-central1"
}

