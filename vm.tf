resource "aws_instance" "server1"{
    ami = "ami-036d46416a34a611c"
    instance_type= "t2.micro"
    tags = {
        Name = "WebServer"
    }
    key_name = aws_key_pair.deployer.key_name
    vpc_security_group_ids = [aws_security_group.mysg.id]
    connection {
    	type = "ssh"
	user = "ubuntu"
	private_key = file("/root/.ssh/id_rsa")
	host = self.private_ip
    }
    provisioner "remote-exec"{
    	inline = [
		"sudo apt-get update && sudo apt-get install apache2 -y && echo DevOpsWorkshop > /var/www/html/index.html"
	]
    }
}
