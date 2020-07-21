resource "google_compute_instance" "example" {
  name          = "example"
  machine_type  = "n2-standard-2"
  zone          = "us-central1-a"
  
  boot_disk {
    initialize_params {
      image = "rhel-8-v20200714"
    }
  }
  
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
  
  tags = ["terraform-example"]
}
