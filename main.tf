resource "aws_instance" "ec2_instance" {
  ami           = var.ami  # Update with the desired AMI ID
  instance_type = var.instance_type     # Update with the desired instance type
  key_name      = var.key_name    # Update with the name of your key pair

  vpc_security_group_ids = [var.vpc_security_group_ids]   # Update with the security group ID(s) for your instance
  subnet_id              = var.subnet_id  # Update with the subnet ID for your instance

  tags = {
    Name = "my-ec2-instance"   #update your name
}
}