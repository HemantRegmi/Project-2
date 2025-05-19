resource "aws_launch_template" "web_lt" {
  name_prefix   = "web-template"
  image_id      = "ami-0953476d60561c955"
  instance_type = "t2.micro"

 
  vpc_security_group_ids = ["sg-0e814383dfa31f893"]

  lifecycle {
    create_before_destroy = true
  }
}
