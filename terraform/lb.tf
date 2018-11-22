resource "google_compute_instance_group" "ruby_app" {
  count = "${var.instance_count}"
  name  = "ruby-web-${count.index}"
  zone  = "europe-west${count.index + 1}-b"

  named_port {
    name = "puma-webserver"
    port = 9292
  }

  instances = ["${element(google_compute_instance.app.*.self_link, count.index)}"]
}

resource "google_compute_health_check" "ruby_health" {
  name               = "ruby-health"
  check_interval_sec = 3
  timeout_sec        = 1

  tcp_health_check {
    port = "9292"
  }
}

resource "google_compute_backend_service" "ruby_backend" {
  name          = "ruby-backend"
  protocol      = "HTTP"
  port_name     = "puma-webserver"
  timeout_sec   = 10
  health_checks = ["${google_compute_health_check.ruby_health.self_link}"]

  backend {
    group = "${element(google_compute_instance_group.ruby_app.*.self_link, count.index)}"
  }
}

resource "google_compute_url_map" "ruby_url" {
  name            = "ruby-url"
  default_service = "${google_compute_backend_service.ruby_backend.self_link}"
}

resource "google_compute_target_http_proxy" "ruby_proxy" {
  name    = "ruby-proxy"
  url_map = "${google_compute_url_map.ruby_url.self_link}"
}

resource "google_compute_global_forwarding_rule" "ruby-forwarding" {
  name       = "ruby-forwarding"
  target     = "${google_compute_target_http_proxy.ruby_proxy.self_link}"
  port_range = 80
}
