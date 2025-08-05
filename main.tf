module "vm" {
    source = "../../Modules/VM"
    
    project_id = "mythic-cocoa-463514-i6"
    name = "new-test-vm"
    region = "us-central1"
    zone = "us-central1-a"
    machine_type = "e2-micro" 
    image = "debian-cloud/debian-12"           
    size = "10"
    type = "pd-standard"
    network = "default"
    subnetwork = "default"
    service_account = "default"
    additional_disk_name = "disk-1"
    additional_disk_size = "10"
    additional_disk_type = "pd-standard"


}