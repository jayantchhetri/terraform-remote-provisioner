output "vm_public_ip"{    
    description = "Public IP of the Server1"
    value = aws_instance.server1.public_ip
}
