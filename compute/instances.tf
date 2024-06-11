resource "aws_instance" "web1" {
  ami             = "ami-0440d3b780d96b29d"
  instance_type   = "t2.micro"
  subnet_id       = var.subnet_ids[0]
  security_groups = [var.security_group_id]
  key_name        = var.key_name
  tags = {
    Name = "CCTB-ProductionEnv"
  }
}

resource "aws_instance" "web2" {
  ami             = "ami-0440d3b780d96b29d"
  instance_type   = "t2.micro"
  subnet_id       = var.subnet_ids[1]
  security_groups = [var.security_group_id]
  key_name        = var.key_name
  tags = {
    Name = "CCTB-ProductionEnv"
  }
}