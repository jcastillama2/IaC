resource "oci_core_subnet" "demoWebSubnet" {
  cidr_block = "10.0.1.0/24"
  display_name = "demoWebSubnet"
  dns_label = "FoggyKitchenN1"
  compartment_id = oci_identity_compartment.demoCompartment.id
  vcn_id = oci_core_virtual_network.demoVCN.id
  route_table_id = oci_core_route_table.demoRouteTableViaIGW.id
  dhcp_options_id = oci_core_dhcp_options.demoDhcpOptions1.id
  security_list_ids = [oci_core_security_list.demoSecurityList.id]
}


