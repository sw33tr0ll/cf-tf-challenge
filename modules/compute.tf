resource "google_compute_instance" "example" {
  name          = "internal-apache"
  machine_type  = "n2-standard-2"
  zone          = "us-central1-a"
  
  boot_disk {
    initialize_params {
      image = "rhel-8-v20200714"
    }
  }
  
  network_interface {
    network = "main-vpc"
    subnetwork = "sub3"
    access_config {
      // Ephemeral IP
    }
  }
  
  tags = ["terraform-example"]
  
  metadata = {
    startup-script = "apt-get -y update && apt-get -y install apache2 && service apache start"
  } 

}
