resource "oci_core_internet_gateway" "demoInternetGateway" {
    compartment_id = oci_identity_compartment.demoCompartment.id
    display_name = "demoInternetGateway"
    vcn_id = oci_core_virtual_network.demoVCN.id
}
