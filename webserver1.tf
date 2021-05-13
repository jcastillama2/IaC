resource "oci_core_instance" "demoWebserver1" {
  availability_domain = lookup(data.oci_identity_availability_domains.ADs.availability_domains[1], "name")
  compartment_id = oci_identity_compartment.demoCompartment.id
  display_name = "demoWebServer1"
  shape = var.Shapes[0]
  subnet_id = oci_core_subnet.demoWebSubnet.id
  source_details {
    source_type = "image"
    source_id   = lookup(data.oci_core_images.OSImageLocal.images[0], "id")
  }
  metadata = {
      ssh_authorized_keys = file(var.public_key_oci)
  }
  create_vnic_details {
     subnet_id = oci_core_subnet.demoWebSubnet.id
     assign_public_ip = true 
  }
}

