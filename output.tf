output "demoWebserver1PublicIP" {
   value = [data.oci_core_vnic.demoWebserver1_VNIC1.public_ip_address]
}