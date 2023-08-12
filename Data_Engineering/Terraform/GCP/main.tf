provider "google" {
  project="terraform-gcp-demos"
  credentials="${file("credentials.json")}"
  region="us-central1"
  zone="us-central1-a"
}

resource "google_compute_instance" "my_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
    access_config {
      //necessary even if empty 
    }
  }
}

resource "google_compute_network" "terraform_network" {
  name = "terraform-network"
  auto_create_subnetworks = false
}

