resource "google_compute_instance" "VM-instance" {
  project      = var.project_id
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  deletion_protection = var.deletion_protection

  metadata = {
    block-project-ssh-keys = "true"
  }

  boot_disk {
    initialize_params {
      size  = var.bootdisk_size
      type  = var.disk
      image = var.image
    }

    # Optional: Encrypt with your own key (uncomment and use if needed)
    # disk_encryption_key {
    #   raw_key = var.disk_encryption_key_raw
    # }
  }

  shielded_instance_config {
    enable_secure_boot          = true
    enable_vtpm                 = true
    enable_integrity_monitoring = true
  }

  network_interface {
    network    = var.network_self_link
    subnetwork = var.subnet_self_link
  }

  service_account {
    email  = var.service_account_email # Ensure this is NOT default SA
    scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }
}
