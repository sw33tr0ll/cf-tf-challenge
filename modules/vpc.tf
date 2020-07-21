resource "google_compute_network" "main-vpc" {
  name = "main-vpc"
  auto_create_subnetworks = "false"
  routing_mode            = "GLOBAL"
}

resource "google_compute_subnetwork" "sub1" {
  name = "sub1"
  network = "main-vpc"
  ip_cidr_range = "10.0.0.0/24"
}

resource "google_compute_subnetwork" "sub2" {
  name = "sub2"
  network = "main-vpc"
  ip_cidr_range = "10.0.1.0/24"
}

resource "google_compute_subnetwork" "sub3" {
  name = "sub3"
  network = "main-vpc"
  ip_cidr_range = "10.0.2.0/24"
}

resource "google_compute_subnetwork" "sub4" {
  name = "sub4"
  network = "main-vpc"
  ip_cidr_range = "10.0.3.0/24"
}
