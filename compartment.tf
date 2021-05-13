resource "oci_identity_compartment" "demoCompartment" {
  name = "demoCompartment"
  description = "demo Compartment"
  compartment_id = var.compartment_ocid
}



