resource "oci_core_virtual_network" "demoVCN" {
  cidr_block = var.VCN-CIDR
  dns_label = "demoVCN"
  compartment_id = oci_identity_compartment.demoCompartment.id
  display_name = "demoVCN"
}

