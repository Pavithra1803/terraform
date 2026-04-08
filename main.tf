resource "google_compute_instance" "vm" {
  name         = "adc-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {}
  }
}

resource "google_storage_bucket" "tf_state" {
  name          = "itachi_bucket"
  location      = "US"
  force_destroy = false
  uniform_bucket_level_access = true 
  versioning {
    enabled = true
  }
}