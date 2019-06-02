resource "aws_instance" "web" {
  count = "${var.instance_count}"
  ami = "ami-004f66641f4c4c798"
  instance_type = "t2.micro"
  key_name = "${var.keypair}"
  security_groups = ["${var.security_g}"]
  subnet_id = "${var.subnet_id}"
}
