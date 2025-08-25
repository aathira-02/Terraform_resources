module "vm-instance" {
  source                 = "./Terraform_module"
  project_id             = "mythic-cocoa-463514-i6"
  name                   = "new-test-vm"
  region                 = "us-central1"
  zone                   = "us-central1-a"
  machine_type           = "e2-micro"               
  disk                   = "pd-standard"             
  network_self_link      = "projects/mythic-cocoa-463514-i6/global/networks/default"
  subnet_self_link       = "projects/mythic-cocoa-463514-i6/regions/us-central1/subnetworks/default"
  service_account_email  = "1017244583700-compute@developer.gserviceaccount.com"
  bootdisk_size          = "10"
  image                  = "debian-cloud/debian-12"
  deletion_protection    = true
}
