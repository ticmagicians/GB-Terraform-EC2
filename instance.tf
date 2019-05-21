resource "aws_instance" "web" {
  count = "${var.instance_count}"
  ami = "ami-09e3977afe9c8920f"
  instance_type = "t2.micro"
  key_name = "${var.keypair}"
  security_groups = ["${var.security_g}"]
  subnet_id = "${var.subnet_id}"
 
  }
}
