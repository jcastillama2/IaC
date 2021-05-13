resource "oci_core_dhcp_options" "demoDhcpOptions1" {
  compartment_id = oci_identity_compartment.demoCompartment.id
  vcn_id = oci_core_virtual_network.demoVCN.id
  display_name = "demoDHCPOptions1"

  // required
  options {
    type = "DomainNameServer"
    server_type = "VcnLocalPlusInternet"
  }

  // optional
  options {
    type = "SearchDomain"
    search_domain_names = [ "foggykitchen.com" ]
  }
}
