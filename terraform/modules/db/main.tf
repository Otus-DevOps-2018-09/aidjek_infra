resource "google_compute_instance" "db" {
  name         = "reddit-db"
  machine_type = "g1-small"
  zone         = "europe-west1-b"
  tags         = ["reddit-db"]

  boot_disk {
    initialize_params {
      image = "${var.db_disk_image}"
    }
  }

  network_interface {
    network       = "default"
    access_config = {}
  }

  metadata {
    sshKeys = "appuser:${file(var.public_key_path)}"
  }

#  connection {
#    type        = "ssh"
#    user        = "appuser"
#    agent       = false
#    private_key = "${file("${var.private_key_path}")}"
#  }

#  provisioner "remote-exec" {
#    inline = [
#      "sudo -- sh -c 'sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf && systemctl restart mongod'",
#    ]
#  }
}

resource "google_compute_firewall" "firewall_mongo" {
  name    = "allow-mongo-default"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["27017"]
  }

  target_tags = ["reddit-db"]
  source_tags = ["reddit-app"]
}
