resource "oci_core_route_table" "demoRouteTableViaIGW" {
    compartment_id = oci_identity_compartment.demoCompartment.id
    vcn_id = oci_core_virtual_network.demoVCN.id
    display_name = "demoRouteTableViaIGW"
    route_rules {
        destination = "0.0.0.0/0"
        destination_type  = "CIDR_BLOCK"
        network_entity_id = oci_core_internet_gateway.demoInternetGateway.id
    }
}
