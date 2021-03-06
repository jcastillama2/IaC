# Gets a list of Availability Domains
data "oci_identity_availability_domains" "ADs" {
  compartment_id = var.tenancy_ocid
}

# Gets the Id of a specific OS Images
data "oci_core_images" "OSImageLocal" {
  #Required
  compartment_id = var.compartment_ocid
  display_name   = var.OsImage
}

data "oci_core_vnic_attachments" "demoWebserver1_VNIC1_attach" {
  availability_domain = lookup(data.oci_identity_availability_domains.ADs.availability_domains[1], "name")
  compartment_id = oci_identity_compartment.demoCompartment.id
  instance_id = oci_core_instance.demoWebserver1.id
}

data "oci_core_vnic" "demoWebserver1_VNIC1" {
  vnic_id = data.oci_core_vnic_attachments.demoWebserver1_VNIC1_attach.vnic_attachments.0.vnic_id
}