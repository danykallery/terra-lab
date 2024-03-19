resource "google_compute_instance" "ubuntu_vm" {
  name         = "ubuntu-l1"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"


  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
      }
  }

  network_interface {
    network = "default"
  }
}

resource "google_compute_firewall" "dk-firewall" {
  name    = "dk-demo-firewall"
  network = "default"


  allow {
    protocol = "tcp"
    ports    = ["80", "22"]
  }

    source_ranges = ["0.0.0.0/0"]
}

