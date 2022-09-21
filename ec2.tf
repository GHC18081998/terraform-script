resource "aws_instance" "terra" {
    ami = "ami-0568773882d492fc8"
    instance_type = "t2.micro"
    key_name = "terra-1-key"
    vpc_security_group_ids = ["${aws_security_group.terraform_sg.id}"]
    subnet_id = "${aws_subnet.terra-subnet-pub.id}"
    associate_public_ip_address = true
    user_data = "${file("userData.sh")}"
    tags = {
        Name = "my food instance"
    }
  
}

#creating new ec2 instance in public subnet
resource "aws_instance" "nametf-ec2" {
    ami = "ami-0568773882d492fc8"
    instance_type = "t2.micro"
    key_name = "terra-1-key"
    vpc_security_group_ids = ["${aws_security_group.terraform_sg.id}"]
    subnet_id = "${aws_subnet.terra-subnet-pub.id}"
    associate_public_ip_address = true
    user_data = "${file("userdata1.sh")}"
    tags = {
        Name = "my ecom instance"
    }
}