resource "google_compute_instance" "k3s" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.region
  project      = var.project_id
  
  network_interface {
    network    = var.network
    access_config {
      nat_ip = var.nat_ip
    }
  }

  boot_disk {
    initialize_params {
      image = "k3s"
    }
  }
}