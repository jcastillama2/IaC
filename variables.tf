
# Compartmet root for desploy
variable "compartment_ocid" {
  default = "xxx"
}


# Tenancy ID 
variable tenancy_ocid {
  default = "xxx"
}

variable "private_key_oci" {
  default = "./keys/id_rsa"
}
variable "public_key_oci" {
  default = "./keys/id_rsa.pub"
}

variable "VCN-CIDR" {
  default = "10.0.0.0/16"
}

variable "VCNname" {
  default = "demoVCN"
}

variable "Shapes" {
 default = ["VM.Standard.E2.1","VM.Standard.E2.1.Micro","VM.Standard2.1","VM.Standard.E2.1","VM.Standard.E2.2"]
}

variable "OsImage" {
  default = "Oracle-Linux-7.9-2021.04.09-0"
}

variable "service_ports" {
  default = [80,443,22]
}

