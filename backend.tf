terraform {
  backend "gcs" {
    bucket  = "pavithra-tf-state"
    prefix  = "dev/terraform"
  }
}