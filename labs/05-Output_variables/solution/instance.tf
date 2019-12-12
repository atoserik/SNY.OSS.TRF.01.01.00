// Terraform plugin for creating random ids
resource "random_id" "instance_id" {
 byte_length = 8
}

// A single Google Cloud Engine instance
resource "google_compute_instance" "erik_default" {
 name         = "erik-vm-${random_id.instance_id.hex}"
 machine_type = "f1-micro"
 zone         = "${var.REGION}"

 boot_disk {
   initialize_params {
    image = "${lookup(var.IMAGE,var.REGION)}"
   }
 }

 network_interface {
   network = "default"

   access_config {
     // Include this section to give the VM an external ip address
   }
 }

  metadata = {
   ssh-keys = "${var.VM_USERNAME}:${file("${var.ID_RSA_PUB_FILE}")}"
 }

}

output "ip" {
    value = "${google_compute_instance.erik_default.network_interface.0.access_config.0.nat_ip}"
}

