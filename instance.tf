resource "aws_instance" "web" {
  count = "${var.instance_count}"
  ami = "ami-02ea87caf2bd48af6"
  instance_type = "t2.micro"
  key_name = "${var.keypair}"
  security_groups = ["${var.security_g}"]
  subnet_id = "${var.subnet_id}"
}

