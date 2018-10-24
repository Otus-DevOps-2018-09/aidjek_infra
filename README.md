# aidjek_infra

aidjek Infra repository

## HomeWork #6

When we're using Input variables, we can destroy and create instance again, using all defined input variables.

```bash
⋊> ~/P/O/D/g/a/terraform on terraform-1 ⨯ terraform destroy                    google_compute_firewall.firewall_puma: Refreshing state... (ID: allow-puma-default)
google_compute_instance.app: Refreshing state... (ID: reddit-app)

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  - google_compute_firewall.firewall_puma

  - google_compute_instance.app


Plan: 0 to add, 0 to change, 2 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

google_compute_firewall.firewall_puma: Destroying... (ID: allow-puma-default)
google_compute_instance.app: Destroying... (ID: reddit-app)
google_compute_firewall.firewall_puma: Still destroying... (ID: allow-puma-default, 10s elapsed)
google_compute_instance.app: Still destroying... (ID: reddit-app, 10s elapsed)
google_compute_instance.app: Still destroying... (ID: reddit-app, 20s elapsed)
google_compute_firewall.firewall_puma: Still destroying... (ID: allow-puma-default, 20s elapsed)
google_compute_firewall.firewall_puma: Destruction complete after 21s
google_compute_instance.app: Still destroying... (ID: reddit-app, 30s elapsed)
google_compute_instance.app: Still destroying... (ID: reddit-app, 40s elapsed)
google_compute_instance.app: Still destroying... (ID: reddit-app, 50s elapsed)
google_compute_instance.app: Still destroying... (ID: reddit-app, 1m0s elapsed)
google_compute_instance.app: Still destroying... (ID: reddit-app, 1m10s elapsed)
google_compute_instance.app: Still destroying... (ID: reddit-app, 1m20s elapsed)
google_compute_instance.app: Still destroying... (ID: reddit-app, 1m30s elapsed)
google_compute_instance.app: Still destroying... (ID: reddit-app, 1m40s elapsed)
google_compute_instance.app: Still destroying... (ID: reddit-app, 1m50s elapsed)
google_compute_instance.app: Still destroying... (ID: reddit-app, 2m0s elapsed)
google_compute_instance.app: Still destroying... (ID: reddit-app, 2m10s elapsed)
google_compute_instance.app: Destruction complete after 2m10s

Destroy complete! Resources: 2 destroyed.
⋊> ~/P/O/D/g/a/terraform on terraform-1 ⨯ terraform plan                       Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  + google_compute_firewall.firewall_puma
      id:                                                  <computed>
      allow.#:                                             "1"
      allow.931060522.ports.#:                             "1"
      allow.931060522.ports.0:                             "9292"
      allow.931060522.protocol:                            "tcp"
      destination_ranges.#:                                <computed>
      name:                                                "allow-puma-default"
      network:                                             "default"
      priority:                                            "1000"
      project:                                             <computed>
      self_link:                                           <computed>
      source_ranges.#:                                     "1"
      source_ranges.1080289494:                            "0.0.0.0/0"
      target_tags.#:                                       "1"
      target_tags.1799682348:                              "reddit-app"

  + google_compute_instance.app
      id:                                                  <computed>
      boot_disk.#:                                         "1"
      boot_disk.0.auto_delete:                             "true"
      boot_disk.0.device_name:                             <computed>
      boot_disk.0.disk_encryption_key_sha256:              <computed>
      boot_disk.0.initialize_params.#:                     "1"
      boot_disk.0.initialize_params.0.image:               "reddit-base"
      can_ip_forward:                                      "false"
      cpu_platform:                                        <computed>
      create_timeout:                                      "4"
      instance_id:                                         <computed>
      label_fingerprint:                                   <computed>
      machine_type:                                        "g1-small"
      metadata.%:                                          "1"
      metadata.ssh-keys:                                   "appuser:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5uy2SzmovqakU6p9B05hzjv/+rd+TLETg1U1gQLVqAqdQQ8zcio7sViIo3aslDYXbX9R3S4sGrDtOpSKoY08SCjbHldXcsdru/HsmitZM/FDSnZoUbQA1EgZIobP93pIy202w0MR36cA6RjbHIDpwwlfSZazCAA90KngR6SLWKXiscxO4Wn7RgIo5gKWwRLryU20l+60dZlyozuZzizGXmk/vPMGK+6nG1DWrubgxTJbiTkg+Lvt3wGlHFSzJG1W3RDrpSVHMcif6WhyJWk1f8Q0DCs33m6o3h+KfWJwVNRpRMWuPISWS8JAmqWjLeYic/y9VV41Stfd3hSzWI2N9 appuser\n"
      metadata_fingerprint:                                <computed>
      name:                                                "reddit-app"
      network_interface.#:                                 "1"
      network_interface.0.access_config.#:                 "1"
      network_interface.0.access_config.0.assigned_nat_ip: <computed>
      network_interface.0.access_config.0.nat_ip:          <computed>
      network_interface.0.address:                         <computed>
      network_interface.0.name:                            <computed>
      network_interface.0.network:                         "default"
      network_interface.0.network_ip:                      <computed>
      network_interface.0.subnetwork_project:              <computed>
      project:                                             <computed>
      scheduling.#:                                        <computed>
      self_link:                                           <computed>
      tags.#:                                              "1"
      tags.1799682348:                                     "reddit-app"
      tags_fingerprint:                                    <computed>
      zone:                                                "europe-west1-b"


Plan: 2 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

⋊> ~/P/O/D/g/a/terraform on terraform-1 ⨯ terraform apply --auto-approve=true  google_compute_firewall.firewall_puma: Creating...
  allow.#:                  "" => "1"
  allow.931060522.ports.#:  "" => "1"
  allow.931060522.ports.0:  "" => "9292"
  allow.931060522.protocol: "" => "tcp"
  destination_ranges.#:     "" => "<computed>"
  name:                     "" => "allow-puma-default"
  network:                  "" => "default"
  priority:                 "" => "1000"
  project:                  "" => "<computed>"
  self_link:                "" => "<computed>"
  source_ranges.#:          "" => "1"
  source_ranges.1080289494: "" => "0.0.0.0/0"
  target_tags.#:            "" => "1"
  target_tags.1799682348:   "" => "reddit-app"
google_compute_instance.app: Creating...
  boot_disk.#:                                         "" => "1"
  boot_disk.0.auto_delete:                             "" => "true"
  boot_disk.0.device_name:                             "" => "<computed>"
  boot_disk.0.disk_encryption_key_sha256:              "" => "<computed>"
  boot_disk.0.initialize_params.#:                     "" => "1"
  boot_disk.0.initialize_params.0.image:               "" => "reddit-base"
  can_ip_forward:                                      "" => "false"
  cpu_platform:                                        "" => "<computed>"
  create_timeout:                                      "" => "4"
  instance_id:                                         "" => "<computed>"
  label_fingerprint:                                   "" => "<computed>"
  machine_type:                                        "" => "g1-small"
  metadata.%:                                          "" => "1"
  metadata.ssh-keys:                                   "" => "appuser:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5uy2SzmovqakU6p9B05hzjv/+rd+TLETg1U1gQLVqAqdQQ8zcio7sViIo3aslDYXbX9R3S4sGrDtOpSKoY08SCjbHldXcsdru/HsmitZM/FDSnZoUbQA1EgZIobP93pIy202w0MR36cA6RjbHIDpwwlfSZazCAA90KngR6SLWKXiscxO4Wn7RgIo5gKWwRLryU20l+60dZlyozuZzizGXmk/vPMGK+6nG1DWrubgxTJbiTkg+Lvt3wGlHFSzJG1W3RDrpSVHMcif6WhyJWk1f8Q0DCs33m6o3h+KfWJwVNRpRMWuPISWS8JAmqWjLeYic/y9VV41Stfd3hSzWI2N9 appuser\n"
  metadata_fingerprint:                                "" => "<computed>"
  name:                                                "" => "reddit-app"
  network_interface.#:                                 "" => "1"
  network_interface.0.access_config.#:                 "" => "1"
  network_interface.0.access_config.0.assigned_nat_ip: "" => "<computed>"
  network_interface.0.access_config.0.nat_ip:          "" => "<computed>"
  network_interface.0.address:                         "" => "<computed>"
  network_interface.0.name:                            "" => "<computed>"
  network_interface.0.network:                         "" => "default"
  network_interface.0.network_ip:                      "" => "<computed>"
  network_interface.0.subnetwork_project:              "" => "<computed>"
  project:                                             "" => "<computed>"
  scheduling.#:                                        "" => "<computed>"
  self_link:                                           "" => "<computed>"
  tags.#:                                              "" => "1"
  tags.1799682348:                                     "" => "reddit-app"
  tags_fingerprint:                                    "" => "<computed>"
  zone:                                                "" => "europe-west1-b"
google_compute_instance.app: Still creating... (10s elapsed)
google_compute_firewall.firewall_puma: Still creating... (10s elapsed)
google_compute_instance.app: Still creating... (20s elapsed)
google_compute_firewall.firewall_puma: Still creating... (20s elapsed)
google_compute_firewall.firewall_puma: Creation complete after 23s (ID: allow-puma-default)
google_compute_instance.app: Still creating... (30s elapsed)
google_compute_instance.app: Still creating... (40s elapsed)
google_compute_instance.app: Still creating... (50s elapsed)
google_compute_instance.app: Provisioning with 'file'...
google_compute_instance.app: Provisioning with 'remote-exec'...
google_compute_instance.app (remote-exec): Connecting to remote host via SSH...
google_compute_instance.app (remote-exec):   Host: 35.241.194.159
google_compute_instance.app (remote-exec):   User: appuser
google_compute_instance.app (remote-exec):   Password: false
google_compute_instance.app (remote-exec):   Private key: true
google_compute_instance.app (remote-exec):   SSH Agent: false
google_compute_instance.app (remote-exec):   Checking Host Key: false
google_compute_instance.app (remote-exec): Connected!
google_compute_instance.app (remote-exec): Cloning into '/home/appuser/reddit'...
google_compute_instance.app (remote-exec): remote: Enumerating objects: 308, done.
google_compute_instance.app (remote-exec): Receiving objects:   0% (1/308)
google_compute_instance.app (remote-exec): Receiving objects:   1% (4/308)
google_compute_instance.app (remote-exec): Receiving objects:   2% (7/308)
google_compute_instance.app (remote-exec): Receiving objects:   3% (10/308)
google_compute_instance.app (remote-exec): Receiving objects:   4% (13/308)
google_compute_instance.app (remote-exec): Receiving objects:   5% (16/308)
google_compute_instance.app (remote-exec): Receiving objects:   6% (19/308)
google_compute_instance.app (remote-exec): Receiving objects:   7% (22/308)
google_compute_instance.app (remote-exec): Receiving objects:   8% (25/308)
google_compute_instance.app (remote-exec): Receiving objects:   9% (28/308)
google_compute_instance.app (remote-exec): Receiving objects:  10% (31/308)
google_compute_instance.app (remote-exec): Receiving objects:  11% (34/308)
google_compute_instance.app (remote-exec): Receiving objects:  12% (37/308)
google_compute_instance.app (remote-exec): Receiving objects:  13% (41/308)
google_compute_instance.app (remote-exec): Receiving objects:  14% (44/308)
google_compute_instance.app (remote-exec): Receiving objects:  15% (47/308)
google_compute_instance.app (remote-exec): Receiving objects:  16% (50/308)
google_compute_instance.app (remote-exec): Receiving objects:  17% (53/308)
google_compute_instance.app (remote-exec): Receiving objects:  18% (56/308)
google_compute_instance.app (remote-exec): Receiving objects:  19% (59/308)
google_compute_instance.app (remote-exec): Receiving objects:  20% (62/308)
google_compute_instance.app (remote-exec): Receiving objects:  21% (65/308)
google_compute_instance.app (remote-exec): Receiving objects:  22% (68/308)
google_compute_instance.app (remote-exec): Receiving objects:  23% (71/308)
google_compute_instance.app (remote-exec): Receiving objects:  24% (74/308)
google_compute_instance.app (remote-exec): Receiving objects:  25% (77/308)
google_compute_instance.app (remote-exec): remote: Total 308 (delta 0), reused 0 (delta 0), pack-reused 308
google_compute_instance.app (remote-exec): Receiving objects:  26% (81/308)
google_compute_instance.app (remote-exec): Receiving objects:  27% (84/308)
google_compute_instance.app (remote-exec): Receiving objects:  28% (87/308)
google_compute_instance.app (remote-exec): Receiving objects:  29% (90/308)
google_compute_instance.app (remote-exec): Receiving objects:  30% (93/308)
google_compute_instance.app (remote-exec): Receiving objects:  31% (96/308)
google_compute_instance.app (remote-exec): Receiving objects:  32% (99/308)
google_compute_instance.app (remote-exec): Receiving objects:  33% (102/308)
google_compute_instance.app (remote-exec): Receiving objects:  34% (105/308)
google_compute_instance.app (remote-exec): Receiving objects:  35% (108/308)
google_compute_instance.app (remote-exec): Receiving objects:  36% (111/308)
google_compute_instance.app (remote-exec): Receiving objects:  37% (114/308)
google_compute_instance.app (remote-exec): Receiving objects:  38% (118/308)
google_compute_instance.app (remote-exec): Receiving objects:  39% (121/308)
google_compute_instance.app (remote-exec): Receiving objects:  40% (124/308)
google_compute_instance.app (remote-exec): Receiving objects:  41% (127/308)
google_compute_instance.app (remote-exec): Receiving objects:  42% (130/308)
google_compute_instance.app (remote-exec): Receiving objects:  43% (133/308)
google_compute_instance.app (remote-exec): Receiving objects:  44% (136/308)
google_compute_instance.app (remote-exec): Receiving objects:  45% (139/308)
google_compute_instance.app (remote-exec): Receiving objects:  46% (142/308)
google_compute_instance.app (remote-exec): Receiving objects:  47% (145/308)
google_compute_instance.app (remote-exec): Receiving objects:  48% (148/308)
google_compute_instance.app (remote-exec): Receiving objects:  49% (151/308)
google_compute_instance.app (remote-exec): Receiving objects:  50% (154/308)
google_compute_instance.app (remote-exec): Receiving objects:  51% (158/308)
google_compute_instance.app (remote-exec): Receiving objects:  52% (161/308)
google_compute_instance.app (remote-exec): Receiving objects:  53% (164/308)
google_compute_instance.app (remote-exec): Receiving objects:  54% (167/308)
google_compute_instance.app (remote-exec): Receiving objects:  55% (170/308)
google_compute_instance.app (remote-exec): Receiving objects:  56% (173/308)
google_compute_instance.app (remote-exec): Receiving objects:  57% (176/308)
google_compute_instance.app (remote-exec): Receiving objects:  58% (179/308)
google_compute_instance.app (remote-exec): Receiving objects:  59% (182/308)
google_compute_instance.app (remote-exec): Receiving objects:  60% (185/308)
google_compute_instance.app (remote-exec): Receiving objects:  61% (188/308)
google_compute_instance.app (remote-exec): Receiving objects:  62% (191/308)
google_compute_instance.app (remote-exec): Receiving objects:  63% (195/308)
google_compute_instance.app (remote-exec): Receiving objects:  64% (198/308)
google_compute_instance.app (remote-exec): Receiving objects:  65% (201/308)
google_compute_instance.app (remote-exec): Receiving objects:  66% (204/308)
google_compute_instance.app (remote-exec): Receiving objects:  67% (207/308)
google_compute_instance.app (remote-exec): Receiving objects:  68% (210/308)
google_compute_instance.app (remote-exec): Receiving objects:  69% (213/308)
google_compute_instance.app (remote-exec): Receiving objects:  70% (216/308)
google_compute_instance.app (remote-exec): Receiving objects:  71% (219/308)
google_compute_instance.app (remote-exec): Receiving objects:  72% (222/308)
google_compute_instance.app (remote-exec): Receiving objects:  73% (225/308)
google_compute_instance.app (remote-exec): Receiving objects:  74% (228/308)
google_compute_instance.app (remote-exec): Receiving objects:  75% (231/308)
google_compute_instance.app (remote-exec): Receiving objects:  76% (235/308)
google_compute_instance.app (remote-exec): Receiving objects:  77% (238/308)
google_compute_instance.app (remote-exec): Receiving objects:  78% (241/308)
google_compute_instance.app (remote-exec): Receiving objects:  79% (244/308)
google_compute_instance.app (remote-exec): Receiving objects:  80% (247/308)
google_compute_instance.app (remote-exec): Receiving objects:  81% (250/308)
google_compute_instance.app (remote-exec): Receiving objects:  82% (253/308)
google_compute_instance.app (remote-exec): Receiving objects:  83% (256/308)
google_compute_instance.app (remote-exec): Receiving objects:  84% (259/308)
google_compute_instance.app (remote-exec): Receiving objects:  85% (262/308)
google_compute_instance.app (remote-exec): Receiving objects:  86% (265/308)
google_compute_instance.app (remote-exec): Receiving objects:  87% (268/308)
google_compute_instance.app (remote-exec): Receiving objects:  88% (272/308)
google_compute_instance.app (remote-exec): Receiving objects:  89% (275/308)
google_compute_instance.app (remote-exec): Receiving objects:  90% (278/308)
google_compute_instance.app (remote-exec): Receiving objects:  91% (281/308)
google_compute_instance.app (remote-exec): Receiving objects:  92% (284/308)
google_compute_instance.app (remote-exec): Receiving objects:  93% (287/308)
google_compute_instance.app (remote-exec): Receiving objects:  94% (290/308)
google_compute_instance.app (remote-exec): Receiving objects:  95% (293/308)
google_compute_instance.app (remote-exec): Receiving objects:  96% (296/308)
google_compute_instance.app (remote-exec): Receiving objects:  97% (299/308)
google_compute_instance.app (remote-exec): Receiving objects:  98% (302/308)
google_compute_instance.app (remote-exec): Receiving objects:  99% (305/308)
google_compute_instance.app (remote-exec): Receiving objects: 100% (308/308)
google_compute_instance.app (remote-exec): Receiving objects: 100% (308/308), 52.01 KiB | 0 bytes/s, done.
google_compute_instance.app (remote-exec): Resolving deltas:   0% (0/167)
google_compute_instance.app (remote-exec): Resolving deltas:   1% (2/167)
google_compute_instance.app (remote-exec): Resolving deltas:   4% (7/167)
google_compute_instance.app (remote-exec): Resolving deltas:   7% (12/167)
google_compute_instance.app (remote-exec): Resolving deltas:  10% (17/167)
google_compute_instance.app (remote-exec): Resolving deltas:  11% (19/167)
google_compute_instance.app (remote-exec): Resolving deltas:  14% (24/167)
google_compute_instance.app (remote-exec): Resolving deltas:  15% (26/167)
google_compute_instance.app (remote-exec): Resolving deltas:  16% (28/167)
google_compute_instance.app (remote-exec): Resolving deltas:  19% (32/167)
google_compute_instance.app (remote-exec): Resolving deltas:  20% (34/167)
google_compute_instance.app (remote-exec): Resolving deltas:  22% (37/167)
google_compute_instance.app (remote-exec): Resolving deltas:  26% (45/167)
google_compute_instance.app (remote-exec): Resolving deltas:  30% (51/167)
google_compute_instance.app (remote-exec): Resolving deltas:  31% (52/167)
google_compute_instance.app (remote-exec): Resolving deltas:  32% (54/167)
google_compute_instance.app (remote-exec): Resolving deltas:  34% (57/167)
google_compute_instance.app (remote-exec): Resolving deltas:  37% (63/167)
google_compute_instance.app (remote-exec): Resolving deltas:  44% (75/167)
google_compute_instance.app (remote-exec): Resolving deltas:  46% (78/167)
google_compute_instance.app (remote-exec): Resolving deltas:  48% (81/167)
google_compute_instance.app (remote-exec): Resolving deltas:  49% (82/167)
google_compute_instance.app (remote-exec): Resolving deltas:  50% (84/167)
google_compute_instance.app (remote-exec): Resolving deltas:  52% (87/167)
google_compute_instance.app (remote-exec): Resolving deltas:  53% (89/167)
google_compute_instance.app (remote-exec): Resolving deltas:  54% (91/167)
google_compute_instance.app (remote-exec): Resolving deltas:  56% (94/167)
google_compute_instance.app (remote-exec): Resolving deltas:  58% (97/167)
google_compute_instance.app (remote-exec): Resolving deltas:  61% (102/167)
google_compute_instance.app (remote-exec): Resolving deltas:  62% (104/167)
google_compute_instance.app (remote-exec): Resolving deltas:  64% (107/167)
google_compute_instance.app (remote-exec): Resolving deltas:  65% (109/167)
google_compute_instance.app (remote-exec): Resolving deltas:  67% (113/167)
google_compute_instance.app (remote-exec): Resolving deltas:  69% (116/167)
google_compute_instance.app (remote-exec): Resolving deltas:  70% (117/167)
google_compute_instance.app (remote-exec): Resolving deltas:  71% (119/167)
google_compute_instance.app (remote-exec): Resolving deltas:  72% (121/167)
google_compute_instance.app (remote-exec): Resolving deltas:  73% (122/167)
google_compute_instance.app (remote-exec): Resolving deltas:  74% (124/167)
google_compute_instance.app (remote-exec): Resolving deltas:  80% (135/167)
google_compute_instance.app (remote-exec): Resolving deltas:  83% (139/167)
google_compute_instance.app (remote-exec): Resolving deltas:  86% (144/167)
google_compute_instance.app (remote-exec): Resolving deltas:  87% (146/167)
google_compute_instance.app (remote-exec): Resolving deltas:  92% (154/167)
google_compute_instance.app (remote-exec): Resolving deltas:  93% (156/167)
google_compute_instance.app (remote-exec): Resolving deltas:  95% (159/167)
google_compute_instance.app (remote-exec): Resolving deltas:  96% (161/167)
google_compute_instance.app (remote-exec): Resolving deltas: 100% (167/167)
google_compute_instance.app (remote-exec): Resolving deltas: 100% (167/167), done.
google_compute_instance.app (remote-exec): Checking connectivity... done.
google_compute_instance.app (remote-exec): Warning: the running version of Bundler is older than the version that created the lockfile. We suggest you upgrade to the latest version of Bundler by running `gem install bundler`.
google_compute_instance.app (remote-exec):
google_compute_instance.app (remote-exec): Fetching gem metadata from https://rubygems.org/.
google_compute_instance.app (remote-exec): .
google_compute_instance.app (remote-exec): .
google_compute_instance.app (remote-exec): .
google_compute_instance.app (remote-exec): .
google_compute_instance.app (remote-exec): .
google_compute_instance.app (remote-exec): .
google_compute_instance.app (remote-exec): .
google_compute_instance.app (remote-exec): .
google_compute_instance.app (remote-exec): .
google_compute_instance.app (remote-exec): Fetching version metadata from https://rubygems.org/.
google_compute_instance.app (remote-exec): .
google_compute_instance.app: Still creating... (1m0s elapsed)
google_compute_instance.app (remote-exec): Installing rake 12.0.0
google_compute_instance.app (remote-exec): Installing net-ssh 4.1.0
google_compute_instance.app (remote-exec): Installing bcrypt 3.1.11 with native extensions
google_compute_instance.app (remote-exec): Installing bson 4.2.2 with native extensions
google_compute_instance.app (remote-exec): Installing bson_ext 1.5.1 with native extensions
google_compute_instance.app (remote-exec): Installing i18n 0.8.6
google_compute_instance.app (remote-exec): Installing puma 3.10.0 with native extensions
google_compute_instance.app: Still creating... (1m10s elapsed)
google_compute_instance.app (remote-exec): Installing temple 0.8.0
google_compute_instance.app (remote-exec): Installing tilt 2.0.8
google_compute_instance.app (remote-exec): Installing json 2.1.0 with native extensions
google_compute_instance.app (remote-exec): Installing mustermann 1.0.2
google_compute_instance.app (remote-exec): Installing rack 2.0.5
google_compute_instance.app (remote-exec): Using bundler 1.11.2
google_compute_instance.app (remote-exec): Installing net-scp 1.2.1
google_compute_instance.app (remote-exec): Installing mongo 2.4.3
google_compute_instance.app (remote-exec): Installing haml 5.0.2
google_compute_instance.app (remote-exec): Installing rack-protection 2.0.2
google_compute_instance.app (remote-exec): Installing sshkit 1.14.0
google_compute_instance.app (remote-exec): Installing sinatra 2.0.2
google_compute_instance.app (remote-exec): Installing airbrussh 1.3.0
google_compute_instance.app (remote-exec): Installing capistrano 3.9.0
google_compute_instance.app (remote-exec): Installing capistrano-bundler 1.2.0
google_compute_instance.app (remote-exec): Installing capistrano-rvm 0.1.2
google_compute_instance.app (remote-exec): Installing capistrano3-puma 3.1.1
google_compute_instance.app (remote-exec): Bundle complete! 11 Gemfile dependencies, 24 gems now installed.
google_compute_instance.app (remote-exec): Use `bundle show [gemname]` to see where a bundled gem is installed.
google_compute_instance.app (remote-exec): Post-install message from capistrano3-puma:

google_compute_instance.app (remote-exec):     All plugins need to be explicitly installed with install_plugin.
google_compute_instance.app (remote-exec):     Please see README.md
google_compute_instance.app (remote-exec):   Created symlink from /etc/systemd/system/multi-user.target.wants/puma.service to /etc/systemd/system/puma.service.
google_compute_instance.app: Creation complete after 1m17s (ID: reddit-app)

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

app_external_ip = 35.241.194.159
```

`terraform fmt` shows which files were changed

```bash
⋊> ~/P/O/D/g/a/terraform on terraform-1 ⨯ terraform fmt                         main.tf
variables.tf
```

if you have several metadata ssh_keys, terraform will use the last one:

```bash
⋊> ~/P/O/D/g/a/terraform on terraform-1 ⨯ terraform apply --auto-approve=true   google_compute_instance.app: Refreshing state... (ID: reddit-app)
google_compute_firewall.firewall_puma: Refreshing state... (ID: allow-puma-default)
google_compute_instance.app: Modifying... (ID: reddit-app)
  metadata.ssh-keys: "appuser1:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5uy2SzmovqakU6p9B05hzjv/+rd+TLETg1U1gQLVqAqdQQ8zcio7sViIo3aslDYXbX9R3S4sGrDtOpSKoY08SCjbHldXcsdru/HsmitZM/FDSnZoUbQA1EgZIobP93pIy202w0MR36cA6RjbHIDpwwlfSZazCAA90KngR6SLWKXiscxO4Wn7RgIo5gKWwRLryU20l+60dZlyozuZzizGXmk/vPMGK+6nG1DWrubgxTJbiTkg+Lvt3wGlHFSzJG1W3RDrpSVHMcif6WhyJWk1f8Q0DCs33m6o3h+KfWJwVNRpRMWuPISWS8JAmqWjLeYic/y9VV41Stfd3hSzWI2N9 appuser\n" => "appuser25:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5uy2SzmovqakU6p9B05hzjv/+rd+TLETg1U1gQLVqAqdQQ8zcio7sViIo3aslDYXbX9R3S4sGrDtOpSKoY08SCjbHldXcsdru/HsmitZM/FDSnZoUbQA1EgZIobP93pIy202w0MR36cA6RjbHIDpwwlfSZazCAA90KngR6SLWKXiscxO4Wn7RgIo5gKWwRLryU20l+60dZlyozuZzizGXmk/vPMGK+6nG1DWrubgxTJbiTkg+Lvt3wGlHFSzJG1W3RDrpSVHMcif6WhyJWk1f8Q0DCs33m6o3h+KfWJwVNRpRMWuPISWS8JAmqWjLeYic/y9VV41Stfd3hSzWI2N9 appuser\n"
google_compute_instance.app: Still modifying... (ID: reddit-app, 10s elapsed)
google_compute_instance.app: Modifications complete after 13s (ID: reddit-app)

Apply complete! Resources: 0 added, 1 changed, 0 destroyed.

Outputs:

app_external_ip = 35.241.194.159
```

after insert new ssh key from web, terraform will rewrite it with current configuration

```bash
⋊> ~/P/O/D/g/a/terraform on terraform-1 ⨯ terraform apply --auto-approve=true   google_compute_instance.app: Refreshing state... (ID: reddit-app)
google_compute_firewall.firewall_puma: Refreshing state... (ID: allow-puma-default)
google_compute_instance.app: Modifying... (ID: reddit-app)
  metadata.ssh-keys: "appuser25:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5uy2SzmovqakU6p9B05hzjv/+rd+TLETg1U1gQLVqAqdQQ8zcio7sViIo3aslDYXbX9R3S4sGrDtOpSKoY08SCjbHldXcsdru/HsmitZM/FDSnZoUbQA1EgZIobP93pIy202w0MR36cA6RjbHIDpwwlfSZazCAA90KngR6SLWKXiscxO4Wn7RgIo5gKWwRLryU20l+60dZlyozuZzizGXmk/vPMGK+6nG1DWrubgxTJbiTkg+Lvt3wGlHFSzJG1W3RDrpSVHMcif6WhyJWk1f8Q0DCs33m6o3h+KfWJwVNRpRMWuPISWS8JAmqWjLeYic/y9VV41Stfd3hSzWI2N9 appuser\nappuser_web:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5uy2SzmovqakU6p9B05hzjv/+rd+TLETg1U1gQLVqAqdQQ8zcio7sViIo3aslDYXbX9R3S4sGrDtOpSKoY08SCjbHldXcsdru/HsmitZM/FDSnZoUbQA1EgZIobP93pIy202w0MR36cA6RjbHIDpwwlfSZazCAA90KngR6SLWKXiscxO4Wn7RgIo5gKWwRLryU20l+60dZlyozuZzizGXmk/vPMGK+6nG1DWrubgxTJbiTkg+Lvt3wGlHFSzJG1W3RDrpSVHMcif6WhyJWk1f8Q0DCs33m6o3h+KfWJwVNRpRMWuPISWS8JAmqWjLeYic/y9VV41Stfd3hSzWI2N9 appuser_web" => "appuser25:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5uy2SzmovqakU6p9B05hzjv/+rd+TLETg1U1gQLVqAqdQQ8zcio7sViIo3aslDYXbX9R3S4sGrDtOpSKoY08SCjbHldXcsdru/HsmitZM/FDSnZoUbQA1EgZIobP93pIy202w0MR36cA6RjbHIDpwwlfSZazCAA90KngR6SLWKXiscxO4Wn7RgIo5gKWwRLryU20l+60dZlyozuZzizGXmk/vPMGK+6nG1DWrubgxTJbiTkg+Lvt3wGlHFSzJG1W3RDrpSVHMcif6WhyJWk1f8Q0DCs33m6o3h+KfWJwVNRpRMWuPISWS8JAmqWjLeYic/y9VV41Stfd3hSzWI2N9 appuser\n"
google_compute_instance.app: Still modifying... (ID: reddit-app, 10s elapsed)
google_compute_instance.app: Modifications complete after 12s (ID: reddit-app)

Apply complete! Resources: 0 added, 1 changed, 0 destroyed.

Outputs:

app_external_ip = 35.241.194.159
```

## HomeWork #5

Create new instance, based on the image made by packer.

```bash
gcloud compute instances create reddit-app \
 --image-family reddit-base \
 --image-project aidjek-infrastructure \
 --machine-type=g1-small \
 --tags puma-server \
 --metadata-from-file startup-script=config-scripts/startup.sh  \
 --restart-on-failure
```

Created [<https://www.googleapis.com/compute/v1/projects/aidjek-infrastructure/zones/europe-west1-c/instances/reddit-app].>

| NAME       | ZONE           | MACHINE_TYPE | PREEMPTIBLE | INTERNAL_IP | EXTERNAL_IP  | STATUS  |
|------------|----------------|--------------|-------------|-------------|--------------|---------|
| reddit-app | europe-west1-c | g1-small     |             | 10.132.0.2  | 35.233.64.13 | RUNNING |

Create new image, using required and user variables in packer.

```bash
⋊> ~/P/O/D/g/a/packer on packer-base ⨯ packer validate --var-file=variables.json ./ubuntu16.json                                       Template validated successfully.
⋊> ~/P/O/D/g/a/packer on packer-base ⨯ packer build --var-file=variables.json ubuntu16.json                                                                   googlecompute output will be in this color.

==> googlecompute: Checking image does not exist...
==> googlecompute: Creating temporary SSH key for instance...
==> googlecompute: Using image: ubuntu-1604-xenial-v20181023
==> googlecompute: Creating instance...
    googlecompute: Loading zone: europe-west1-b
    googlecompute: Loading machine type: g1-small
    googlecompute: Requesting instance creation...
    googlecompute: Waiting for creation operation to complete...
    googlecompute: Instance has been created!
==> googlecompute: Waiting for the instance to become running...
    googlecompute: IP: 35.240.125.118
==> googlecompute: Using ssh communicator to connect: 35.240.125.118
==> googlecompute: Waiting for SSH to become available...
==> googlecompute: Connected to SSH!
==> googlecompute: Provisioning with shell script: scripts/install_ruby.sh
    googlecompute:
    googlecompute: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
    googlecompute:
    googlecompute: Hit:1 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial InRelease
    googlecompute: Get:2 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates InRelease [109 kB]
    googlecompute: Get:3 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-backports InRelease [107 kB]
    googlecompute: Get:4 http://security.ubuntu.com/ubuntu xenial-security InRelease [107 kB]
    googlecompute: Get:5 http://archive.canonical.com/ubuntu xenial InRelease [11.5 kB]
    googlecompute: Get:6 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main Sources [868 kB]
    googlecompute: Get:7 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/restricted Sources [4,808 B]
    googlecompute: Get:8 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/universe Sources [7,728 kB]
    googlecompute: Get:9 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/multiverse Sources [179 kB]
    googlecompute: Get:10 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/universe amd64 Packages [7,532 kB]
    googlecompute: Get:11 http://security.ubuntu.com/ubuntu xenial-security/main Sources [136 kB]
    googlecompute: Get:12 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/universe Translation-en [4,354 kB]
    googlecompute: Get:13 http://security.ubuntu.com/ubuntu xenial-security/restricted Sources [2,116 B]
    googlecompute: Get:14 http://security.ubuntu.com/ubuntu xenial-security/universe Sources [78.4 kB]
    googlecompute: Get:15 http://security.ubuntu.com/ubuntu xenial-security/multiverse Sources [2,088 B]
    googlecompute: Get:16 http://security.ubuntu.com/ubuntu xenial-security/universe amd64 Packages [392 kB]
    googlecompute: Get:17 http://security.ubuntu.com/ubuntu xenial-security/universe Translation-en [150 kB]
    googlecompute: Get:18 http://security.ubuntu.com/ubuntu xenial-security/multiverse amd64 Packages [3,460 B]
    googlecompute: Get:19 http://security.ubuntu.com/ubuntu xenial-security/multiverse Translation-en [1,744 B]
    googlecompute: Get:20 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/multiverse amd64 Packages [144 kB]
    googlecompute: Get:21 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/multiverse Translation-en [106 kB]
    googlecompute: Get:22 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main Sources [323 kB]
    googlecompute: Get:23 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/restricted Sources [2,528 B]
    googlecompute: Get:24 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/universe Sources [224 kB]
    googlecompute: Get:25 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/multiverse Sources [8,384 B]
    googlecompute: Get:26 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/universe amd64 Packages [696 kB]
    googlecompute: Get:27 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/universe Translation-en [282 kB]
    googlecompute: Get:28 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/multiverse amd64 Packages [16.4 kB]
    googlecompute: Get:29 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/multiverse Translation-en [8,344 B]
    googlecompute: Get:30 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-backports/main Sources [4,868 B]
    googlecompute: Get:31 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-backports/universe Sources [6,740 B]
    googlecompute: Get:32 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-backports/main amd64 Packages [7,304 B]
    googlecompute: Get:33 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-backports/main Translation-en [4,456 B]
    googlecompute: Get:34 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-backports/universe amd64 Packages [7,804 B]
    googlecompute: Get:35 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-backports/universe Translation-en [4,184 B]
    googlecompute: Get:36 http://archive.canonical.com/ubuntu xenial/partner amd64 Packages [3,128 B]
    googlecompute: Get:37 http://archive.canonical.com/ubuntu xenial/partner Translation-en [1,616 B]
    googlecompute: Fetched 23.6 MB in 5s (4,473 kB/s)
    googlecompute: Reading package lists...
    googlecompute: Building dependency tree...
    googlecompute: Reading state information...
    googlecompute: All packages are up to date.
    googlecompute:
    googlecompute: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
    googlecompute:
    googlecompute: Reading package lists...
    googlecompute: Building dependency tree...
    googlecompute: Reading state information...
    googlecompute: The following additional packages will be installed:
    googlecompute:   binutils cpp cpp-5 dpkg-dev fakeroot fontconfig-config fonts-dejavu-core
    googlecompute:   fonts-lato g++ g++-5 gcc gcc-5 javascript-common libalgorithm-diff-perl
    googlecompute:   libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan2 libatomic1
    googlecompute:   libc-dev-bin libc6-dev libcc1-0 libcilkrts5 libdpkg-perl libfakeroot
    googlecompute:   libfile-fcntllock-perl libfontconfig1 libgcc-5-dev libgmp-dev libgmpxx4ldbl
    googlecompute:   libgomp1 libisl15 libitm1 libjs-jquery liblsan0 libmpc3 libmpx0 libquadmath0
    googlecompute:   libruby2.3 libstdc++-5-dev libtcl8.6 libtcltk-ruby libtk8.6 libtsan0
    googlecompute:   libubsan0 libxft2 libxrender1 libxss1 linux-libc-dev make manpages-dev rake
    googlecompute:   ri ruby ruby-dev ruby-did-you-mean ruby-minitest ruby-molinillo
    googlecompute:   ruby-net-http-persistent ruby-net-telnet ruby-power-assert ruby-test-unit
    googlecompute:   ruby-thor ruby2.3 ruby2.3-dev ruby2.3-doc ruby2.3-tcltk rubygems-integration
    googlecompute:   unzip x11-common zip
    googlecompute: Suggested packages:
    googlecompute:   binutils-doc cpp-doc gcc-5-locales debian-keyring g++-multilib
    googlecompute:   g++-5-multilib gcc-5-doc libstdc++6-5-dbg gcc-multilib autoconf automake
    googlecompute:   libtool flex bison gdb gcc-doc gcc-5-multilib libgcc1-dbg libgomp1-dbg
    googlecompute:   libitm1-dbg libatomic1-dbg libasan2-dbg liblsan0-dbg libtsan0-dbg
    googlecompute:   libubsan0-dbg libcilkrts5-dbg libmpx0-dbg libquadmath0-dbg apache2
    googlecompute:   | lighttpd | httpd glibc-doc gmp-doc libgmp10-doc libmpfr-dev
    googlecompute:   libstdc++-5-doc tcl8.6 tk8.6 make-doc bundler
    googlecompute: The following NEW packages will be installed:
    googlecompute:   binutils build-essential cpp cpp-5 dpkg-dev fakeroot fontconfig-config
    googlecompute:   fonts-dejavu-core fonts-lato g++ g++-5 gcc gcc-5 javascript-common
    googlecompute:   libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl
    googlecompute:   libasan2 libatomic1 libc-dev-bin libc6-dev libcc1-0 libcilkrts5 libdpkg-perl
    googlecompute:   libfakeroot libfile-fcntllock-perl libfontconfig1 libgcc-5-dev libgmp-dev
    googlecompute:   libgmpxx4ldbl libgomp1 libisl15 libitm1 libjs-jquery liblsan0 libmpc3
    googlecompute:   libmpx0 libquadmath0 libruby2.3 libstdc++-5-dev libtcl8.6 libtcltk-ruby
    googlecompute:   libtk8.6 libtsan0 libubsan0 libxft2 libxrender1 libxss1 linux-libc-dev make
    googlecompute:   manpages-dev rake ri ruby ruby-bundler ruby-dev ruby-did-you-mean ruby-full
    googlecompute:   ruby-minitest ruby-molinillo ruby-net-http-persistent ruby-net-telnet
    googlecompute:   ruby-power-assert ruby-test-unit ruby-thor ruby2.3 ruby2.3-dev ruby2.3-doc
    googlecompute:   ruby2.3-tcltk rubygems-integration unzip x11-common zip
    googlecompute: 0 upgraded, 73 newly installed, 0 to remove and 0 not upgraded.
    googlecompute: Need to get 52.7 MB of archives.
    googlecompute: After this operation, 220 MB of additional disk space will be used.
    googlecompute: Get:1 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 fonts-lato all 2.0-1 [2,693 kB]
    googlecompute: Get:2 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 fonts-dejavu-core all 2.35-1 [1,039 kB]
    googlecompute: Get:3 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 fontconfig-config all 2.11.94-0ubuntu1.1 [49.9 kB]
    googlecompute: Get:4 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libfontconfig1 amd64 2.11.94-0ubuntu1.1 [131 kB]
    googlecompute: Get:5 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libxrender1 amd64 1:0.9.9-0ubuntu1 [18.5 kB]
    googlecompute: Get:6 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libxft2 amd64 2.3.2-1 [36.1 kB]
    googlecompute: Get:7 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 x11-common all 1:7.7+13ubuntu3.1 [22.9 kB]
    googlecompute: Get:8 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libxss1 amd64 1:1.2.2-1 [8,582 B]
    googlecompute: Get:9 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libmpc3 amd64 1.0.3-1 [39.7 kB]
    googlecompute: Get:10 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 binutils amd64 2.26.1-1ubuntu1~16.04.7 [2,309 kB]
    googlecompute: Get:11 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libc-dev-bin amd64 2.23-0ubuntu10 [68.7 kB]
    googlecompute: Get:12 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 linux-libc-dev amd64 4.4.0-138.164 [859 kB]
    googlecompute: Get:13 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libc6-dev amd64 2.23-0ubuntu10 [2,079 kB]
    googlecompute: Get:14 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libisl15 amd64 0.16.1-1 [524 kB]
    googlecompute: Get:15 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 cpp-5 amd64 5.4.0-6ubuntu1~16.04.10 [7,671 kB]
    googlecompute: Get:16 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 cpp amd64 4:5.3.1-1ubuntu1 [27.7 kB]
    googlecompute: Get:17 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libcc1-0 amd64 5.4.0-6ubuntu1~16.04.10 [38.8 kB]
    googlecompute: Get:18 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libgomp1 amd64 5.4.0-6ubuntu1~16.04.10 [55.1 kB]
    googlecompute: Get:19 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libitm1 amd64 5.4.0-6ubuntu1~16.04.10 [27.4 kB]
    googlecompute: Get:20 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libatomic1 amd64 5.4.0-6ubuntu1~16.04.10 [8,888 B]
    googlecompute: Get:21 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libasan2 amd64 5.4.0-6ubuntu1~16.04.10 [264 kB]
    googlecompute: Get:22 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 liblsan0 amd64 5.4.0-6ubuntu1~16.04.10 [105 kB]
    googlecompute: Get:23 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libtsan0 amd64 5.4.0-6ubuntu1~16.04.10 [244 kB]
    googlecompute: Get:24 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libubsan0 amd64 5.4.0-6ubuntu1~16.04.10 [95.3 kB]
    googlecompute: Get:25 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libcilkrts5 amd64 5.4.0-6ubuntu1~16.04.10 [40.1 kB]
    googlecompute: Get:26 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libmpx0 amd64 5.4.0-6ubuntu1~16.04.10 [9,764 B]
    googlecompute: Get:27 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libquadmath0 amd64 5.4.0-6ubuntu1~16.04.10 [131 kB]
    googlecompute: Get:28 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libgcc-5-dev amd64 5.4.0-6ubuntu1~16.04.10 [2,228 kB]
    googlecompute: Get:29 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 gcc-5 amd64 5.4.0-6ubuntu1~16.04.10 [8,426 kB]
    googlecompute: Get:30 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 gcc amd64 4:5.3.1-1ubuntu1 [5,244 B]
    googlecompute: Get:31 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libstdc++-5-dev amd64 5.4.0-6ubuntu1~16.04.10 [1,426 kB]
    googlecompute: Get:32 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 g++-5 amd64 5.4.0-6ubuntu1~16.04.10 [8,319 kB]
    googlecompute: Get:33 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 g++ amd64 4:5.3.1-1ubuntu1 [1,504 B]
    googlecompute: Get:34 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 make amd64 4.1-6 [151 kB]
    googlecompute: Get:35 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libdpkg-perl all 1.18.4ubuntu1.4 [195 kB]
    googlecompute: Get:36 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 dpkg-dev all 1.18.4ubuntu1.4 [584 kB]
    googlecompute: Get:37 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 build-essential amd64 12.1ubuntu2 [4,758 B]
    googlecompute: Get:38 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libfakeroot amd64 1.20.2-1ubuntu1 [25.5 kB]
    googlecompute: Get:39 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 fakeroot amd64 1.20.2-1ubuntu1 [61.8 kB]
    googlecompute: Get:40 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 javascript-common all 11 [6,066 B]
    googlecompute: Get:41 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libalgorithm-diff-perl all 1.19.03-1 [47.6 kB]
    googlecompute: Get:42 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libalgorithm-diff-xs-perl amd64 0.04-4build1 [11.0 kB]
    googlecompute: Get:43 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libalgorithm-merge-perl all 0.08-3 [12.0 kB]
    googlecompute: Get:44 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libfile-fcntllock-perl amd64 0.22-3 [32.0 kB]
    googlecompute: Get:45 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libgmpxx4ldbl amd64 2:6.1.0+dfsg-2 [8,948 B]
    googlecompute: Get:46 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libgmp-dev amd64 2:6.1.0+dfsg-2 [314 kB]
    googlecompute: Get:47 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libjs-jquery all 1.11.3+dfsg-4 [161 kB]
    googlecompute: Get:48 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libtcl8.6 amd64 8.6.5+dfsg-2 [875 kB]
    googlecompute: Get:49 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 rubygems-integration all 1.10 [4,966 B]
    googlecompute: Get:50 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 ruby2.3 amd64 2.3.1-2~16.04.10 [41.0 kB]
    googlecompute: Get:51 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 ruby all 1:2.3.0+1 [5,530 B]
    googlecompute: Get:52 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 rake all 10.5.0-2 [48.2 kB]
    googlecompute: Get:53 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 ruby-did-you-mean all 1.0.0-2 [8,390 B]
    googlecompute: Get:54 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 ruby-minitest all 5.8.4-2 [36.6 kB]
    googlecompute: Get:55 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 ruby-net-telnet all 0.1.1-2 [12.6 kB]
    googlecompute: Get:56 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 ruby-power-assert all 0.2.7-1 [7,668 B]
    googlecompute: Get:57 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 ruby-test-unit all 3.1.7-2 [60.3 kB]
    googlecompute: Get:58 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libruby2.3 amd64 2.3.1-2~16.04.10 [2,960 kB]
    googlecompute: Get:59 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libtk8.6 amd64 8.6.5-1 [693 kB]
    googlecompute: Get:60 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/universe amd64 ruby2.3-tcltk amd64 2.3.1-2~16.04.10 [276 kB]
    googlecompute: Get:61 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/universe amd64 libtcltk-ruby all 1:2.3.0+1 [4,138 B]
    googlecompute: Get:62 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 manpages-dev all 4.04-2 [2,048 kB]
    googlecompute: Get:63 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 ruby2.3-doc all 2.3.1-2~16.04.10 [3,405 kB]
    googlecompute: Get:64 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/universe amd64 ri all 1:2.3.0+1 [4,274 B]
    googlecompute: Get:65 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/universe amd64 ruby-molinillo all 0.4.3-1 [12.1 kB]
    googlecompute: Get:66 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/universe amd64 ruby-net-http-persistent all 2.9.4-1 [15.9 kB]
    googlecompute: Get:67 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/universe amd64 ruby-thor all 0.19.1-2 [43.7 kB]
    googlecompute: Get:68 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/universe amd64 ruby-bundler all 1.11.2-1 [122 kB]
    googlecompute: Get:69 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 ruby2.3-dev amd64 2.3.1-2~16.04.10 [1,034 kB]
    googlecompute: Get:70 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 ruby-dev amd64 1:2.3.0+1 [4,408 B]
    googlecompute: Get:71 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/universe amd64 ruby-full all 1:2.3.0+1 [2,558 B]
    googlecompute: Get:72 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 unzip amd64 6.0-20ubuntu1 [158 kB]
    googlecompute: Get:73 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 zip amd64 3.0-11 [158 kB]
    googlecompute: debconf: unable to initialize frontend: Dialog
    googlecompute: debconf: (Dialog frontend will not work on a dumb terminal, an emacs shell buffer, or without a controlling terminal.)
    googlecompute: debconf: falling back to frontend: Readline
    googlecompute: debconf: unable to initialize frontend: Readline
    googlecompute: debconf: (This frontend requires a controlling tty.)
    googlecompute: debconf: falling back to frontend: Teletype
    googlecompute: dpkg-preconfigure: unable to re-open stdin:
    googlecompute: Fetched 52.7 MB in 3s (14.6 MB/s)
    googlecompute: Selecting previously unselected package fonts-lato.
    googlecompute: (Reading database ... 71020 files and directories currently installed.)
    googlecompute: Preparing to unpack .../fonts-lato_2.0-1_all.deb ...
    googlecompute: Unpacking fonts-lato (2.0-1) ...
    googlecompute: Selecting previously unselected package fonts-dejavu-core.
    googlecompute: Preparing to unpack .../fonts-dejavu-core_2.35-1_all.deb ...
    googlecompute: Unpacking fonts-dejavu-core (2.35-1) ...
    googlecompute: Selecting previously unselected package fontconfig-config.
    googlecompute: Preparing to unpack .../fontconfig-config_2.11.94-0ubuntu1.1_all.deb ...
    googlecompute: Unpacking fontconfig-config (2.11.94-0ubuntu1.1) ...
    googlecompute: Selecting previously unselected package libfontconfig1:amd64.
    googlecompute: Preparing to unpack .../libfontconfig1_2.11.94-0ubuntu1.1_amd64.deb ...
    googlecompute: Unpacking libfontconfig1:amd64 (2.11.94-0ubuntu1.1) ...
    googlecompute: Selecting previously unselected package libxrender1:amd64.
    googlecompute: Preparing to unpack .../libxrender1_1%3a0.9.9-0ubuntu1_amd64.deb ...
    googlecompute: Unpacking libxrender1:amd64 (1:0.9.9-0ubuntu1) ...
    googlecompute: Selecting previously unselected package libxft2:amd64.
    googlecompute: Preparing to unpack .../libxft2_2.3.2-1_amd64.deb ...
    googlecompute: Unpacking libxft2:amd64 (2.3.2-1) ...
    googlecompute: Selecting previously unselected package x11-common.
    googlecompute: Preparing to unpack .../x11-common_1%3a7.7+13ubuntu3.1_all.deb ...
    googlecompute: dpkg-query: no packages found matching nux-tools
    googlecompute: Unpacking x11-common (1:7.7+13ubuntu3.1) ...
    googlecompute: Selecting previously unselected package libxss1:amd64.
    googlecompute: Preparing to unpack .../libxss1_1%3a1.2.2-1_amd64.deb ...
    googlecompute: Unpacking libxss1:amd64 (1:1.2.2-1) ...
    googlecompute: Selecting previously unselected package libmpc3:amd64.
    googlecompute: Preparing to unpack .../libmpc3_1.0.3-1_amd64.deb ...
    googlecompute: Unpacking libmpc3:amd64 (1.0.3-1) ...
    googlecompute: Selecting previously unselected package binutils.
    googlecompute: Preparing to unpack .../binutils_2.26.1-1ubuntu1~16.04.7_amd64.deb ...
    googlecompute: Unpacking binutils (2.26.1-1ubuntu1~16.04.7) ...
    googlecompute: Selecting previously unselected package libc-dev-bin.
    googlecompute: Preparing to unpack .../libc-dev-bin_2.23-0ubuntu10_amd64.deb ...
    googlecompute: Unpacking libc-dev-bin (2.23-0ubuntu10) ...
    googlecompute: Selecting previously unselected package linux-libc-dev:amd64.
    googlecompute: Preparing to unpack .../linux-libc-dev_4.4.0-138.164_amd64.deb ...
    googlecompute: Unpacking linux-libc-dev:amd64 (4.4.0-138.164) ...
    googlecompute: Selecting previously unselected package libc6-dev:amd64.
    googlecompute: Preparing to unpack .../libc6-dev_2.23-0ubuntu10_amd64.deb ...
    googlecompute: Unpacking libc6-dev:amd64 (2.23-0ubuntu10) ...
    googlecompute: Selecting previously unselected package libisl15:amd64.
    googlecompute: Preparing to unpack .../libisl15_0.16.1-1_amd64.deb ...
    googlecompute: Unpacking libisl15:amd64 (0.16.1-1) ...
    googlecompute: Selecting previously unselected package cpp-5.
    googlecompute: Preparing to unpack .../cpp-5_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
    googlecompute: Unpacking cpp-5 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Selecting previously unselected package cpp.
    googlecompute: Preparing to unpack .../cpp_4%3a5.3.1-1ubuntu1_amd64.deb ...
    googlecompute: Unpacking cpp (4:5.3.1-1ubuntu1) ...
    googlecompute: Selecting previously unselected package libcc1-0:amd64.
    googlecompute: Preparing to unpack .../libcc1-0_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
    googlecompute: Unpacking libcc1-0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Selecting previously unselected package libgomp1:amd64.
    googlecompute: Preparing to unpack .../libgomp1_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
    googlecompute: Unpacking libgomp1:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Selecting previously unselected package libitm1:amd64.
    googlecompute: Preparing to unpack .../libitm1_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
    googlecompute: Unpacking libitm1:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Selecting previously unselected package libatomic1:amd64.
    googlecompute: Preparing to unpack .../libatomic1_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
    googlecompute: Unpacking libatomic1:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Selecting previously unselected package libasan2:amd64.
    googlecompute: Preparing to unpack .../libasan2_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
    googlecompute: Unpacking libasan2:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Selecting previously unselected package liblsan0:amd64.
    googlecompute: Preparing to unpack .../liblsan0_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
    googlecompute: Unpacking liblsan0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Selecting previously unselected package libtsan0:amd64.
    googlecompute: Preparing to unpack .../libtsan0_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
    googlecompute: Unpacking libtsan0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Selecting previously unselected package libubsan0:amd64.
    googlecompute: Preparing to unpack .../libubsan0_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
    googlecompute: Unpacking libubsan0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Selecting previously unselected package libcilkrts5:amd64.
    googlecompute: Preparing to unpack .../libcilkrts5_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
    googlecompute: Unpacking libcilkrts5:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Selecting previously unselected package libmpx0:amd64.
    googlecompute: Preparing to unpack .../libmpx0_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
    googlecompute: Unpacking libmpx0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Selecting previously unselected package libquadmath0:amd64.
    googlecompute: Preparing to unpack .../libquadmath0_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
    googlecompute: Unpacking libquadmath0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Selecting previously unselected package libgcc-5-dev:amd64.
    googlecompute: Preparing to unpack .../libgcc-5-dev_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
    googlecompute: Unpacking libgcc-5-dev:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Selecting previously unselected package gcc-5.
    googlecompute: Preparing to unpack .../gcc-5_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
    googlecompute: Unpacking gcc-5 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Selecting previously unselected package gcc.
    googlecompute: Preparing to unpack .../gcc_4%3a5.3.1-1ubuntu1_amd64.deb ...
    googlecompute: Unpacking gcc (4:5.3.1-1ubuntu1) ...
    googlecompute: Selecting previously unselected package libstdc++-5-dev:amd64.
    googlecompute: Preparing to unpack .../libstdc++-5-dev_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
    googlecompute: Unpacking libstdc++-5-dev:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Selecting previously unselected package g++-5.
    googlecompute: Preparing to unpack .../g++-5_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
    googlecompute: Unpacking g++-5 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Selecting previously unselected package g++.
    googlecompute: Preparing to unpack .../g++_4%3a5.3.1-1ubuntu1_amd64.deb ...
    googlecompute: Unpacking g++ (4:5.3.1-1ubuntu1) ...
    googlecompute: Selecting previously unselected package make.
    googlecompute: Preparing to unpack .../archives/make_4.1-6_amd64.deb ...
    googlecompute: Unpacking make (4.1-6) ...
    googlecompute: Selecting previously unselected package libdpkg-perl.
    googlecompute: Preparing to unpack .../libdpkg-perl_1.18.4ubuntu1.4_all.deb ...
    googlecompute: Unpacking libdpkg-perl (1.18.4ubuntu1.4) ...
    googlecompute: Selecting previously unselected package dpkg-dev.
    googlecompute: Preparing to unpack .../dpkg-dev_1.18.4ubuntu1.4_all.deb ...
    googlecompute: Unpacking dpkg-dev (1.18.4ubuntu1.4) ...
    googlecompute: Selecting previously unselected package build-essential.
    googlecompute: Preparing to unpack .../build-essential_12.1ubuntu2_amd64.deb ...
    googlecompute: Unpacking build-essential (12.1ubuntu2) ...
    googlecompute: Selecting previously unselected package libfakeroot:amd64.
    googlecompute: Preparing to unpack .../libfakeroot_1.20.2-1ubuntu1_amd64.deb ...
    googlecompute: Unpacking libfakeroot:amd64 (1.20.2-1ubuntu1) ...
    googlecompute: Selecting previously unselected package fakeroot.
    googlecompute: Preparing to unpack .../fakeroot_1.20.2-1ubuntu1_amd64.deb ...
    googlecompute: Unpacking fakeroot (1.20.2-1ubuntu1) ...
    googlecompute: Selecting previously unselected package javascript-common.
    googlecompute: Preparing to unpack .../javascript-common_11_all.deb ...
    googlecompute: Unpacking javascript-common (11) ...
    googlecompute: Selecting previously unselected package libalgorithm-diff-perl.
    googlecompute: Preparing to unpack .../libalgorithm-diff-perl_1.19.03-1_all.deb ...
    googlecompute: Unpacking libalgorithm-diff-perl (1.19.03-1) ...
    googlecompute: Selecting previously unselected package libalgorithm-diff-xs-perl.
    googlecompute: Preparing to unpack .../libalgorithm-diff-xs-perl_0.04-4build1_amd64.deb ...
    googlecompute: Unpacking libalgorithm-diff-xs-perl (0.04-4build1) ...
    googlecompute: Selecting previously unselected package libalgorithm-merge-perl.
    googlecompute: Preparing to unpack .../libalgorithm-merge-perl_0.08-3_all.deb ...
    googlecompute: Unpacking libalgorithm-merge-perl (0.08-3) ...
    googlecompute: Selecting previously unselected package libfile-fcntllock-perl.
    googlecompute: Preparing to unpack .../libfile-fcntllock-perl_0.22-3_amd64.deb ...
    googlecompute: Unpacking libfile-fcntllock-perl (0.22-3) ...
    googlecompute: Selecting previously unselected package libgmpxx4ldbl:amd64.
    googlecompute: Preparing to unpack .../libgmpxx4ldbl_2%3a6.1.0+dfsg-2_amd64.deb ...
    googlecompute: Unpacking libgmpxx4ldbl:amd64 (2:6.1.0+dfsg-2) ...
    googlecompute: Selecting previously unselected package libgmp-dev:amd64.
    googlecompute: Preparing to unpack .../libgmp-dev_2%3a6.1.0+dfsg-2_amd64.deb ...
    googlecompute: Unpacking libgmp-dev:amd64 (2:6.1.0+dfsg-2) ...
    googlecompute: Selecting previously unselected package libjs-jquery.
    googlecompute: Preparing to unpack .../libjs-jquery_1.11.3+dfsg-4_all.deb ...
    googlecompute: Unpacking libjs-jquery (1.11.3+dfsg-4) ...
    googlecompute: Selecting previously unselected package libtcl8.6:amd64.
    googlecompute: Preparing to unpack .../libtcl8.6_8.6.5+dfsg-2_amd64.deb ...
    googlecompute: Unpacking libtcl8.6:amd64 (8.6.5+dfsg-2) ...
    googlecompute: Selecting previously unselected package rubygems-integration.
    googlecompute: Preparing to unpack .../rubygems-integration_1.10_all.deb ...
    googlecompute: Unpacking rubygems-integration (1.10) ...
    googlecompute: Selecting previously unselected package ruby2.3.
    googlecompute: Preparing to unpack .../ruby2.3_2.3.1-2~16.04.10_amd64.deb ...
    googlecompute: Unpacking ruby2.3 (2.3.1-2~16.04.10) ...
    googlecompute: Selecting previously unselected package ruby.
    googlecompute: Preparing to unpack .../ruby_1%3a2.3.0+1_all.deb ...
    googlecompute: Unpacking ruby (1:2.3.0+1) ...
    googlecompute: Selecting previously unselected package rake.
    googlecompute: Preparing to unpack .../archives/rake_10.5.0-2_all.deb ...
    googlecompute: Unpacking rake (10.5.0-2) ...
    googlecompute: Selecting previously unselected package ruby-did-you-mean.
    googlecompute: Preparing to unpack .../ruby-did-you-mean_1.0.0-2_all.deb ...
    googlecompute: Unpacking ruby-did-you-mean (1.0.0-2) ...
    googlecompute: Selecting previously unselected package ruby-minitest.
    googlecompute: Preparing to unpack .../ruby-minitest_5.8.4-2_all.deb ...
    googlecompute: Unpacking ruby-minitest (5.8.4-2) ...
    googlecompute: Selecting previously unselected package ruby-net-telnet.
    googlecompute: Preparing to unpack .../ruby-net-telnet_0.1.1-2_all.deb ...
    googlecompute: Unpacking ruby-net-telnet (0.1.1-2) ...
    googlecompute: Selecting previously unselected package ruby-power-assert.
    googlecompute: Preparing to unpack .../ruby-power-assert_0.2.7-1_all.deb ...
    googlecompute: Unpacking ruby-power-assert (0.2.7-1) ...
    googlecompute: Selecting previously unselected package ruby-test-unit.
    googlecompute: Preparing to unpack .../ruby-test-unit_3.1.7-2_all.deb ...
    googlecompute: Unpacking ruby-test-unit (3.1.7-2) ...
    googlecompute: Selecting previously unselected package libruby2.3:amd64.
    googlecompute: Preparing to unpack .../libruby2.3_2.3.1-2~16.04.10_amd64.deb ...
    googlecompute: Unpacking libruby2.3:amd64 (2.3.1-2~16.04.10) ...
    googlecompute: Selecting previously unselected package libtk8.6:amd64.
    googlecompute: Preparing to unpack .../libtk8.6_8.6.5-1_amd64.deb ...
    googlecompute: Unpacking libtk8.6:amd64 (8.6.5-1) ...
    googlecompute: Selecting previously unselected package ruby2.3-tcltk.
    googlecompute: Preparing to unpack .../ruby2.3-tcltk_2.3.1-2~16.04.10_amd64.deb ...
    googlecompute: Unpacking ruby2.3-tcltk (2.3.1-2~16.04.10) ...
    googlecompute: Selecting previously unselected package libtcltk-ruby.
    googlecompute: Preparing to unpack .../libtcltk-ruby_1%3a2.3.0+1_all.deb ...
    googlecompute: Unpacking libtcltk-ruby (1:2.3.0+1) ...
    googlecompute: Selecting previously unselected package manpages-dev.
    googlecompute: Preparing to unpack .../manpages-dev_4.04-2_all.deb ...
    googlecompute: Unpacking manpages-dev (4.04-2) ...
    googlecompute: Selecting previously unselected package ruby2.3-doc.
    googlecompute: Preparing to unpack .../ruby2.3-doc_2.3.1-2~16.04.10_all.deb ...
    googlecompute: Unpacking ruby2.3-doc (2.3.1-2~16.04.10) ...
    googlecompute: Selecting previously unselected package ri.
    googlecompute: Preparing to unpack .../ri_1%3a2.3.0+1_all.deb ...
    googlecompute: Unpacking ri (1:2.3.0+1) ...
    googlecompute: Selecting previously unselected package ruby-molinillo.
    googlecompute: Preparing to unpack .../ruby-molinillo_0.4.3-1_all.deb ...
    googlecompute: Unpacking ruby-molinillo (0.4.3-1) ...
    googlecompute: Selecting previously unselected package ruby-net-http-persistent.
    googlecompute: Preparing to unpack .../ruby-net-http-persistent_2.9.4-1_all.deb ...
    googlecompute: Unpacking ruby-net-http-persistent (2.9.4-1) ...
    googlecompute: Selecting previously unselected package ruby-thor.
    googlecompute: Preparing to unpack .../ruby-thor_0.19.1-2_all.deb ...
    googlecompute: Unpacking ruby-thor (0.19.1-2) ...
    googlecompute: Selecting previously unselected package ruby-bundler.
    googlecompute: Preparing to unpack .../ruby-bundler_1.11.2-1_all.deb ...
    googlecompute: Unpacking ruby-bundler (1.11.2-1) ...
    googlecompute: Selecting previously unselected package ruby2.3-dev:amd64.
    googlecompute: Preparing to unpack .../ruby2.3-dev_2.3.1-2~16.04.10_amd64.deb ...
    googlecompute: Unpacking ruby2.3-dev:amd64 (2.3.1-2~16.04.10) ...
    googlecompute: Selecting previously unselected package ruby-dev:amd64.
    googlecompute: Preparing to unpack .../ruby-dev_1%3a2.3.0+1_amd64.deb ...
    googlecompute: Unpacking ruby-dev:amd64 (1:2.3.0+1) ...
    googlecompute: Selecting previously unselected package ruby-full.
    googlecompute: Preparing to unpack .../ruby-full_1%3a2.3.0+1_all.deb ...
    googlecompute: Unpacking ruby-full (1:2.3.0+1) ...
    googlecompute: Selecting previously unselected package unzip.
    googlecompute: Preparing to unpack .../unzip_6.0-20ubuntu1_amd64.deb ...
    googlecompute: Unpacking unzip (6.0-20ubuntu1) ...
    googlecompute: Selecting previously unselected package zip.
    googlecompute: Preparing to unpack .../archives/zip_3.0-11_amd64.deb ...
    googlecompute: Unpacking zip (3.0-11) ...
    googlecompute: Processing triggers for man-db (2.7.5-1) ...
    googlecompute: Processing triggers for libc-bin (2.23-0ubuntu10) ...
    googlecompute: Processing triggers for systemd (229-4ubuntu21.4) ...
    googlecompute: Processing triggers for ureadahead (0.100.0-19) ...
    googlecompute: Processing triggers for mime-support (3.59ubuntu1) ...
    googlecompute: Setting up fonts-lato (2.0-1) ...
    googlecompute: Setting up fonts-dejavu-core (2.35-1) ...
    googlecompute: Setting up fontconfig-config (2.11.94-0ubuntu1.1) ...
    googlecompute: Setting up libfontconfig1:amd64 (2.11.94-0ubuntu1.1) ...
    googlecompute: Setting up libxrender1:amd64 (1:0.9.9-0ubuntu1) ...
    googlecompute: Setting up libxft2:amd64 (2.3.2-1) ...
    googlecompute: Setting up x11-common (1:7.7+13ubuntu3.1) ...
    googlecompute: debconf: unable to initialize frontend: Dialog
    googlecompute: debconf: (Dialog frontend will not work on a dumb terminal, an emacs shell buffer, or without a controlling terminal.)
    googlecompute: debconf: falling back to frontend: Readline
    googlecompute: update-rc.d: warning: start and stop actions are no longer supported; falling back to defaults
    googlecompute: Setting up libxss1:amd64 (1:1.2.2-1) ...
    googlecompute: Setting up libmpc3:amd64 (1.0.3-1) ...
    googlecompute: Setting up binutils (2.26.1-1ubuntu1~16.04.7) ...
    googlecompute: Setting up libc-dev-bin (2.23-0ubuntu10) ...
    googlecompute: Setting up linux-libc-dev:amd64 (4.4.0-138.164) ...
    googlecompute: Setting up libc6-dev:amd64 (2.23-0ubuntu10) ...
    googlecompute: Setting up libisl15:amd64 (0.16.1-1) ...
    googlecompute: Setting up cpp-5 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Setting up cpp (4:5.3.1-1ubuntu1) ...
    googlecompute: Setting up libcc1-0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Setting up libgomp1:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Setting up libitm1:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Setting up libatomic1:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Setting up libasan2:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Setting up liblsan0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Setting up libtsan0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Setting up libubsan0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Setting up libcilkrts5:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Setting up libmpx0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Setting up libquadmath0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Setting up libgcc-5-dev:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Setting up gcc-5 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Setting up gcc (4:5.3.1-1ubuntu1) ...
    googlecompute: Setting up libstdc++-5-dev:amd64 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Setting up g++-5 (5.4.0-6ubuntu1~16.04.10) ...
    googlecompute: Setting up g++ (4:5.3.1-1ubuntu1) ...
    googlecompute: update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
    googlecompute: Setting up make (4.1-6) ...
    googlecompute: Setting up libdpkg-perl (1.18.4ubuntu1.4) ...
    googlecompute: Setting up dpkg-dev (1.18.4ubuntu1.4) ...
    googlecompute: Setting up build-essential (12.1ubuntu2) ...
    googlecompute: Setting up libfakeroot:amd64 (1.20.2-1ubuntu1) ...
    googlecompute: Setting up fakeroot (1.20.2-1ubuntu1) ...
    googlecompute: update-alternatives: using /usr/bin/fakeroot-sysv to provide /usr/bin/fakeroot (fakeroot) in auto mode
    googlecompute: Setting up javascript-common (11) ...
    googlecompute: Setting up libalgorithm-diff-perl (1.19.03-1) ...
    googlecompute: Setting up libalgorithm-diff-xs-perl (0.04-4build1) ...
    googlecompute: Setting up libalgorithm-merge-perl (0.08-3) ...
    googlecompute: Setting up libfile-fcntllock-perl (0.22-3) ...
    googlecompute: Setting up libgmpxx4ldbl:amd64 (2:6.1.0+dfsg-2) ...
    googlecompute: Setting up libgmp-dev:amd64 (2:6.1.0+dfsg-2) ...
    googlecompute: Setting up libjs-jquery (1.11.3+dfsg-4) ...
    googlecompute: Setting up libtcl8.6:amd64 (8.6.5+dfsg-2) ...
    googlecompute: Setting up rubygems-integration (1.10) ...
    googlecompute: Setting up ruby-did-you-mean (1.0.0-2) ...
    googlecompute: Setting up ruby-minitest (5.8.4-2) ...
    googlecompute: Setting up ruby-net-telnet (0.1.1-2) ...
    googlecompute: Setting up ruby-power-assert (0.2.7-1) ...
    googlecompute: Setting up ruby-test-unit (3.1.7-2) ...
    googlecompute: Setting up libtk8.6:amd64 (8.6.5-1) ...
    googlecompute: Setting up manpages-dev (4.04-2) ...
    googlecompute: Setting up ruby2.3-doc (2.3.1-2~16.04.10) ...
    googlecompute: Setting up unzip (6.0-20ubuntu1) ...
    googlecompute: Setting up zip (3.0-11) ...
    googlecompute: Setting up ruby2.3 (2.3.1-2~16.04.10) ...
    googlecompute: Setting up ruby (1:2.3.0+1) ...
    googlecompute: Setting up ri (1:2.3.0+1) ...
    googlecompute: Setting up ruby-molinillo (0.4.3-1) ...
    googlecompute: Setting up ruby-net-http-persistent (2.9.4-1) ...
    googlecompute: Setting up ruby-thor (0.19.1-2) ...
    googlecompute: Setting up ruby-bundler (1.11.2-1) ...
    googlecompute: Setting up rake (10.5.0-2) ...
    googlecompute: Setting up libruby2.3:amd64 (2.3.1-2~16.04.10) ...
    googlecompute: Setting up ruby2.3-tcltk (2.3.1-2~16.04.10) ...
    googlecompute: Setting up libtcltk-ruby (1:2.3.0+1) ...
    googlecompute: Setting up ruby2.3-dev:amd64 (2.3.1-2~16.04.10) ...
    googlecompute: Setting up ruby-dev:amd64 (1:2.3.0+1) ...
    googlecompute: Setting up ruby-full (1:2.3.0+1) ...
    googlecompute: Processing triggers for libc-bin (2.23-0ubuntu10) ...
    googlecompute: Processing triggers for systemd (229-4ubuntu21.4) ...
    googlecompute: Processing triggers for ureadahead (0.100.0-19) ...
==> googlecompute: Provisioning with shell script: scripts/install_mongodb.sh
    googlecompute:
    googlecompute: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
    googlecompute:
    googlecompute: Reading package lists...
    googlecompute: Building dependency tree...
    googlecompute: Reading state information...
    googlecompute: The following additional packages will be installed:
    googlecompute:   libassuan0 libksba8 libnpth0
    googlecompute: The following NEW packages will be installed:
    googlecompute:   dirmngr libassuan0 libksba8 libnpth0
    googlecompute: 0 upgraded, 4 newly installed, 0 to remove and 0 not upgraded.
    googlecompute: Need to get 368 kB of archives.
    googlecompute: After this operation, 1,041 kB of additional disk space will be used.
    googlecompute: Get:1 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libassuan0 amd64 2.4.2-2 [34.6 kB]
    googlecompute: Get:2 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 libksba8 amd64 1.3.3-1ubuntu0.16.04.1 [90.2 kB]
    googlecompute: Get:3 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial/main amd64 libnpth0 amd64 1.2-3 [7,998 B]
    googlecompute: Get:4 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/main amd64 dirmngr amd64 2.1.11-6ubuntu2.1 [235 kB]
    googlecompute: debconf: unable to initialize frontend: Dialog
    googlecompute: debconf: (Dialog frontend will not work on a dumb terminal, an emacs shell buffer, or without a controlling terminal.)
    googlecompute: debconf: falling back to frontend: Readline
    googlecompute: debconf: unable to initialize frontend: Readline
    googlecompute: debconf: (This frontend requires a controlling tty.)
    googlecompute: debconf: falling back to frontend: Teletype
    googlecompute: dpkg-preconfigure: unable to re-open stdin:
    googlecompute: Fetched 368 kB in 0s (7,004 kB/s)
    googlecompute: Selecting previously unselected package libassuan0:amd64.
    googlecompute: (Reading database ... 93924 files and directories currently installed.)
    googlecompute: Preparing to unpack .../libassuan0_2.4.2-2_amd64.deb ...
    googlecompute: Unpacking libassuan0:amd64 (2.4.2-2) ...
    googlecompute: Selecting previously unselected package libksba8:amd64.
    googlecompute: Preparing to unpack .../libksba8_1.3.3-1ubuntu0.16.04.1_amd64.deb ...
    googlecompute: Unpacking libksba8:amd64 (1.3.3-1ubuntu0.16.04.1) ...
    googlecompute: Selecting previously unselected package libnpth0:amd64.
    googlecompute: Preparing to unpack .../libnpth0_1.2-3_amd64.deb ...
    googlecompute: Unpacking libnpth0:amd64 (1.2-3) ...
    googlecompute: Selecting previously unselected package dirmngr.
    googlecompute: Preparing to unpack .../dirmngr_2.1.11-6ubuntu2.1_amd64.deb ...
    googlecompute: Unpacking dirmngr (2.1.11-6ubuntu2.1) ...
    googlecompute: Processing triggers for libc-bin (2.23-0ubuntu10) ...
    googlecompute: Processing triggers for man-db (2.7.5-1) ...
    googlecompute: Setting up libassuan0:amd64 (2.4.2-2) ...
    googlecompute: Setting up libksba8:amd64 (1.3.3-1ubuntu0.16.04.1) ...
    googlecompute: Setting up libnpth0:amd64 (1.2-3) ...
    googlecompute: Setting up dirmngr (2.1.11-6ubuntu2.1) ...
    googlecompute: Processing triggers for libc-bin (2.23-0ubuntu10) ...
    googlecompute: Executing: /tmp/tmp.2Yt6uW7hwo/gpg.1.sh --keyserver
    googlecompute: hkp://keyserver.ubuntu.com:80
    googlecompute: --recv
    googlecompute: EA312927
    googlecompute: gpg: requesting key EA312927 from hkp server keyserver.ubuntu.com
    googlecompute: gpg: key EA312927: public key "MongoDB 3.2 Release Signing Key <packaging@mongodb.com>" imported
    googlecompute: gpg: key EA312927: public key "Totally Legit Signing Key <mallory@example.org>" imported
    googlecompute: gpg: Total number processed: 2
    googlecompute: gpg:               imported: 2  (RSA: 2)
    googlecompute: Hit:1 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial InRelease
    googlecompute: Hit:2 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates InRelease
    googlecompute: Hit:3 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-backports InRelease
    googlecompute: Hit:4 http://security.ubuntu.com/ubuntu xenial-security InRelease
    googlecompute: Hit:5 http://archive.canonical.com/ubuntu xenial InRelease
    googlecompute: Ign:6 http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 InRelease
    googlecompute: Get:7 http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 Release [3,462 B]
    googlecompute: Get:8 http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 Release.gpg [801 B]
    googlecompute: Get:9 http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2/multiverse amd64 Packages [10.7 kB]
    googlecompute: Fetched 14.9 kB in 0s (25.3 kB/s)
    googlecompute: Reading package lists...
    googlecompute: Reading package lists...
    googlecompute: Building dependency tree...
    googlecompute: Reading state information...
    googlecompute: The following additional packages will be installed:
    googlecompute:   mongodb-org-mongos mongodb-org-server mongodb-org-shell mongodb-org-tools
    googlecompute: The following NEW packages will be installed:
    googlecompute:   mongodb-org mongodb-org-mongos mongodb-org-server mongodb-org-shell
    googlecompute:   mongodb-org-tools
    googlecompute: 0 upgraded, 5 newly installed, 0 to remove and 0 not upgraded.
    googlecompute: Need to get 51.7 MB of archives.
    googlecompute: After this operation, 215 MB of additional disk space will be used.
    googlecompute: Get:1 http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2/multiverse amd64 mongodb-org-shell amd64 3.2.21 [5,276 kB]
    googlecompute: Get:2 http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2/multiverse amd64 mongodb-org-server amd64 3.2.21 [10.0 MB]
    googlecompute: Get:3 http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2/multiverse amd64 mongodb-org-mongos amd64 3.2.21 [4,680 kB]
    googlecompute: Get:4 http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2/multiverse amd64 mongodb-org-tools amd64 3.2.21 [31.8 MB]
    googlecompute: Get:5 http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2/multiverse amd64 mongodb-org amd64 3.2.21 [3,560 B]
    googlecompute: debconf: unable to initialize frontend: Dialog
    googlecompute: debconf: (Dialog frontend will not work on a dumb terminal, an emacs shell buffer, or without a controlling terminal.)
    googlecompute: debconf: falling back to frontend: Readline
    googlecompute: debconf: unable to initialize frontend: Readline
    googlecompute: debconf: (This frontend requires a controlling tty.)
    googlecompute: debconf: falling back to frontend: Teletype
    googlecompute: dpkg-preconfigure: unable to re-open stdin:
    googlecompute: Fetched 51.7 MB in 3s (13.7 MB/s)
    googlecompute: Selecting previously unselected package mongodb-org-shell.
    googlecompute: (Reading database ... 93959 files and directories currently installed.)
    googlecompute: Preparing to unpack .../mongodb-org-shell_3.2.21_amd64.deb ...
    googlecompute: Unpacking mongodb-org-shell (3.2.21) ...
    googlecompute: Selecting previously unselected package mongodb-org-server.
    googlecompute: Preparing to unpack .../mongodb-org-server_3.2.21_amd64.deb ...
    googlecompute: Unpacking mongodb-org-server (3.2.21) ...
    googlecompute: Selecting previously unselected package mongodb-org-mongos.
    googlecompute: Preparing to unpack .../mongodb-org-mongos_3.2.21_amd64.deb ...
    googlecompute: Unpacking mongodb-org-mongos (3.2.21) ...
    googlecompute: Selecting previously unselected package mongodb-org-tools.
    googlecompute: Preparing to unpack .../mongodb-org-tools_3.2.21_amd64.deb ...
    googlecompute: Unpacking mongodb-org-tools (3.2.21) ...
    googlecompute: Selecting previously unselected package mongodb-org.
    googlecompute: Preparing to unpack .../mongodb-org_3.2.21_amd64.deb ...
    googlecompute: Unpacking mongodb-org (3.2.21) ...
    googlecompute: Processing triggers for man-db (2.7.5-1) ...
    googlecompute: Setting up mongodb-org-shell (3.2.21) ...
    googlecompute: Setting up mongodb-org-server (3.2.21) ...
    googlecompute: Adding system user `mongodb' (UID 113) ...
    googlecompute: Adding new user `mongodb' (UID 113) with group `nogroup' ...
    googlecompute: Not creating home directory `/home/mongodb'.
    googlecompute: Adding group `mongodb' (GID 117) ...
    googlecompute: Done.
    googlecompute: Adding user `mongodb' to group `mongodb' ...
    googlecompute: Adding user mongodb to group mongodb
    googlecompute: Done.
    googlecompute: Setting up mongodb-org-mongos (3.2.21) ...
    googlecompute: Setting up mongodb-org-tools (3.2.21) ...
    googlecompute: Setting up mongodb-org (3.2.21) ...
    googlecompute: Created symlink from /etc/systemd/system/multi-user.target.wants/mongod.service to /lib/systemd/system/mongod.service.
==> googlecompute: Deleting instance...
    googlecompute: Instance has been deleted!
==> googlecompute: Creating image...
==> googlecompute: Deleting disk...
    googlecompute: Disk has been deleted!
Build 'googlecompute' finished.

==> Builds finished. The artifacts of successful builds are:
--> googlecompute: A disk image was created: reddit-base-1540309989
```

Bake new image via packer with preinstalled ruby, mongo and puma-server as service.

```bash
⋊> ~/P/O/D/g/a/packer on packer-base ⨯ packer validate ./immutable.json
Template validated successfully.
⋊> ~/P/O/D/g/a/packer on packer-base ⨯ packer build ./immutable.json            googlecompute output will be in this color.

==> googlecompute: Checking image does not exist...
==> googlecompute: Creating temporary SSH key for instance...
==> googlecompute: Using image: reddit-base-1540294996
==> googlecompute: Creating instance...
    googlecompute: Loading zone: europe-west1-b
    googlecompute: Loading machine type: g1-small
    googlecompute: Requesting instance creation...
    googlecompute: Waiting for creation operation to complete...
    googlecompute: Instance has been created!
==> googlecompute: Waiting for the instance to become running...
    googlecompute: IP: 35.240.125.118
==> googlecompute: Using ssh communicator to connect: 35.240.125.118
==> googlecompute: Waiting for SSH to become available...
==> googlecompute: Connected to SSH!
==> googlecompute: Uploading files/puma-server.service => /home/appuser/
1 items:  242 B / 242 B [==================================================================================================================================================] 0s
==> googlecompute: Provisioning with shell script: scripts/enable_puma.sh
    googlecompute:
    googlecompute: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
    googlecompute:
    googlecompute: Hit:1 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial InRelease
    googlecompute: Get:2 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates InRelease [109 kB]
    googlecompute: Get:3 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-backports InRelease [107 kB]
    googlecompute: Get:4 http://security.ubuntu.com/ubuntu xenial-security InRelease [107 kB]
    googlecompute: Ign:5 http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 InRelease
    googlecompute: Hit:6 http://archive.canonical.com/ubuntu xenial InRelease
    googlecompute: Hit:7 http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 Release
    googlecompute: Get:8 http://europe-west1.gce.archive.ubuntu.com/ubuntu xenial-updates/universe amd64 Packages [696 kB]
    googlecompute: Fetched 1,019 kB in 1s (875 kB/s)
    googlecompute: Reading package lists...
    googlecompute: Building dependency tree...
    googlecompute: Reading state information...
    googlecompute: All packages are up to date.
    googlecompute:
    googlecompute: WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
    googlecompute:
    googlecompute: Reading package lists...
    googlecompute: Building dependency tree...
    googlecompute: Reading state information...
    googlecompute: git is already the newest version (1:2.7.4-0ubuntu1.5).
    googlecompute: 0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
    googlecompute: Cloning into 'reddit'...
    googlecompute: Don't run Bundler as root. Bundler can ask for sudo if it is needed, and
    googlecompute: installing your bundle as root will break this application for all non-root
    googlecompute: users on this machine.
    googlecompute: Warning: the running version of Bundler is older than the version that created the lockfile. We suggest you upgrade to the latest version of Bundler by running `gem install bundler`.
    googlecompute: Fetching gem metadata from https://rubygems.org/..........
    googlecompute: Fetching version metadata from https://rubygems.org/..
    googlecompute: Installing rake 12.0.0
    googlecompute: Installing net-ssh 4.1.0
    googlecompute: Installing bcrypt 3.1.11 with native extensions
    googlecompute: Installing bson 4.2.2 with native extensions
    googlecompute: Installing bson_ext 1.5.1 with native extensions
    googlecompute: Installing i18n 0.8.6
    googlecompute: Installing puma 3.10.0 with native extensions
    googlecompute: Installing temple 0.8.0
    googlecompute: Installing tilt 2.0.8
    googlecompute: Installing json 2.1.0 with native extensions
    googlecompute: Installing mustermann 1.0.2
    googlecompute: Installing rack 2.0.5
    googlecompute: Using bundler 1.11.2
    googlecompute: Installing net-scp 1.2.1
    googlecompute: Installing mongo 2.4.3
    googlecompute: Installing haml 5.0.2
    googlecompute: Installing rack-protection 2.0.2
    googlecompute: Installing sshkit 1.14.0
    googlecompute: Installing sinatra 2.0.2
    googlecompute: Installing airbrussh 1.3.0
    googlecompute: Installing capistrano 3.9.0
    googlecompute: Installing capistrano-bundler 1.2.0
    googlecompute: Installing capistrano-rvm 0.1.2
    googlecompute: Installing capistrano3-puma 3.1.1
    googlecompute: Bundle complete! 11 Gemfile dependencies, 24 gems now installed.
    googlecompute: Use `bundle show [gemname]` to see where a bundled gem is installed.
    googlecompute: Post-install message from capistrano3-puma:
    googlecompute:
    googlecompute:     All plugins need to be explicitly installed with install_plugin.
    googlecompute:     Please see README.md
    googlecompute: Created symlink from /etc/systemd/system/default.target.wants/puma-server.service to /etc/systemd/system/puma-server.service.
    googlecompute:
==> googlecompute: Deleting instance...
    googlecompute: Instance has been deleted!
==> googlecompute: Creating image...
==> googlecompute: Deleting disk...
    googlecompute: Disk has been deleted!
Build 'googlecompute' finished.

==> Builds finished. The artifacts of successful builds are:
--> googlecompute: A disk image was created: reddit-full-1540311864
```

Create new instance with preinstalled and configured application.

```bash
⋊> ~/P/O/D/g/aidjek_infra on packer-base ⨯ ./config-scripts/create-reddit-vm.sh Created [https://www.googleapis.com/compute/v1/projects/aidjek-infrastructure/zones/europe-west1-d/instances/reddit-app].
NAME        ZONE            MACHINE_TYPE  PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP     STATUS
reddit-app  europe-west1-d  g1-small                   10.132.0.2   35.240.125.118  RUNNING
```

## HomeWork #4

testapp_IP = 35.233.64.13  
testapp_port = 9292

делаем тестовый instance.  
Created [<https://www.googleapis.com/compute/v1/projects/aidjek-infrastructure/zones/europe-west1-b/instances/reddit-app].>

| NAME       | ZONE           | MACHINE_TYPE | PREEMPTIBLE | INTERNAL_IP | EXTERNAL_IP  | STATUS  |
|------------|----------------|--------------|-------------|-------------|--------------|---------|
| reddit-app | europe-west1-b | g1-small     |             | 10.132.0.2  | 35.233.64.13 | RUNNING |

создаем правило фаервола для порта 9292.

```bash
gcloud compute firewall-rules create default-puma-server \
 --network default \
 --priority 1000 \
 --direction ingress \
 --action allow \
 --target-tags puma-server \
 --source-ranges 0.0.0.0/0 \
 --rules tcp:9292
```

Creating firewall...  
Created [<https://www.googleapis.com/compute/v1/projects/aidjek-infrastructure/global/firewalls/default-puma-server].>  
Creating firewall...done.  

| NAME                | NETWORK | DIRECTION | PRIORITY | ALLOW    | DENY  | DISABLED  |
|------------|----------------|--------------|-------------|-------------|--------------|---------|
| default-puma-server | default | INGRESS   | 1000     | tcp:9292 |  | False |

Создаем тестовый instance с startup скриптом.

```bash
gcloud compute instances create reddit-app-tmp \
 --boot-disk-size=10GB \
 --image-family ubuntu-1604-lts \
 --image-project=ubuntu-os-cloud \
 --machine-type=g1-small \
 --tags puma-server \
 --metadata-from-file startup-script=startup.sh \
 --restart-on-failure
 ```

Created [<https://www.googleapis.com/compute/v1/projects/aidjek-infrastructure/zones/europe-north1-b/instances/reddit-app-tmp].>

| NAME          | ZONE            | MACHINE_TYPE | PREEMPTIBLE | INTERNAL_IP | EXTERNAL_IP  | STATUS  |
|------------|----------------|--------------|-------------|-------------|--------------|---------|
| reddit-app-tmp | europe-west1-b | g1-small     |             | 10.166.0.2  | 35.228.132.145 | RUNNING |

## HomeWork #3

bastion_IP = 35.204.164.162  
someinternalhost_IP = 10.164.0.3

Для решения самостоятельного задания нужно сделать следующее:

создать отдельный ~/.ssh/config, например такой (все действия выполнялись в MacOS)

```bash
cat /Users/aidjek/.ssh/config.devops.otus
## ---- Local Hosts -----

Host bastion.gcp.otus
  HostName 35.204.164.162
  Port 22
  User evgheni.antropov
  LocalForward 2222 10.164.0.3:22

Host vip-host.gcp.otus
  HostName 127.0.0.1
  Port 2222
  User evgheni.antropov

## -- default for all -
Host *
  AddKeysToAgent yes
  IgnoreUnknown UseKeychain
  UseKeychain yes
  ForwardAgent yes
  User evgheni.antropov
  Port 22
  IdentityFile /Users/aidjek/.ssh/evgheni.antropov@devops.otus
```

Alias прописал в Fish Functions:

```bash
⋊> ~/P/O/D/g/aidjek_infra on cloud-bastion  alias ssh_devops_otus='/usr/local/bin/ssh -F /Users/aidjek/.ssh/config.devops.otus'
⋊> ~/P/O/D/g/aidjek_infra on cloud-bastion  funcsave ssh_devops_otus
⋊> ~/P/O/D/g/aidjek_infra on cloud-bastion  ssh_devops_otus bastion.gcp.otus
```

Здесь описаны правила подключения к определённому хосту и ко всем другим. Прописан сквозной forwarding ключей и локальный проброс SSH порта через bastion хост

```bash
⋊> ~/P/O/D/g/aidjek_infra on cloud-bastion ⨯ lsof -i:2222                                                                                  23:40:43
COMMAND   PID   USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
ssh     21662 aidjek    6u  IPv6 0xc95648f739b6490b      0t0  TCP localhost:rockwell-csp2 (LISTEN)
ssh     21662 aidjek    7u  IPv4 0xc95648f762d4364b      0t0  TCP localhost:rockwell-csp2 (LISTEN)
⋊> ~/P/O/D/g/aidjek_infra on cloud-bastion ⨯ ssh_devops_otus vip-host.gcp.otus
Welcome to Ubuntu 16.04.5 LTS (GNU/Linux 4.15.0-1021-gcp x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  Get cloud support with Ubuntu Advantage Cloud Guest:
    http://www.ubuntu.com/business/services/cloud

0 packages can be updated.
0 updates are security updates.


Last login: Tue Oct 16 20:40:36 2018 from 10.164.0.2
evgheni.antropov@vip-host:~$ logout
Connection to 127.0.0.1 closed.
```

VPN поднят на bastion хосте. Подключиться к VPN можно используя файл конфигурации из репозитория.
SSL сертификат от Let's Encrypt установлен: <https://35.204.164.162.sslip.io/>
