resource "null_resource" "demoWebserver1HTTPD" {
 depends_on = [oci_core_instance.demoWebserver1]
 provisioner "remote-exec" {
        connection {
                type     = "ssh"
                user     = "opc"
		        host     = data.oci_core_vnic.demoWebserver1_VNIC1.public_ip_address
                private_key = file(var.private_key_oci)
                script_path = "/home/opc/myssh.sh"
                agent = false
                timeout = "10m"
        }
  inline = ["echo '== 1. Instalar HTTPD package con yum'",
            "sudo -u root yum -y -q install httpd",

            "echo '== 2. Crear fichero /var/www/html/index.html'",
            "sudo -u root touch /var/www/html/index.html", 
            "sudo /bin/su -c \"echo 'Bienvenido! soy el servidor WEBSERVER1...' > /var/www/html/index.html\"",

            "echo '== 3. Desahabilitar firewall y arrancando apache'",
            "sudo -u root service firewalld stop",
            "sudo -u root service httpd start"]
  }
}
