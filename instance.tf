resource "aws_instance" "web" {
  count = "${var.instance_count}"
  ami = "ami-02ea87caf2bd48af6"
  instance_type = "t2.micro"
  key_name = "${var.keypair}"
  security_groups = ["${var.security_g}"]
  subnet_id = "${var.subnet_id}"
  tags { 
    Name = "${var.tag_name} ${count.index + 1}" 
  } 

}

#Instance Attachment
resource "aws_alb_target_group_attachment" "GB-TIC-TG1" {
  count = "${var.instance_count}"
  target_group_arn = "${var.target_group_arn}"
  target_id        = "${element(resource.aws_instance.web.*.id, count.index)}"
  port             = 80
}
