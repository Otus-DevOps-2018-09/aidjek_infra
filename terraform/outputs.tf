#output "app_external_ip" {
#  value = "${element(google_compute_instance.app-.network_interface.*.access_config.*.assigned_nat_ip, count.index)}"
#}

output "loadbalancer_external_ip" {
  value = "${google_compute_global_forwarding_rule.ruby-forwarding.ip_address}"
}
