
resource "aws_instance" "web1" {
  ami           = "ami-0440d3b780d96b29d" # Amazon Linux 2 AMI (HVM)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main_a.id
  security_groups = [aws_security_group.web_sg.id]
  key_name      = aws_key_pair.generated_key.key_name
  tags = {
    Name = "CCTB-ProductionEnv"
  }
}

resource "aws_instance" "web2" {
  ami           = "ami-0440d3b780d96b29d" # Amazon Linux 2 AMI (HVM)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main_b.id
  security_groups = [aws_security_group.web_sg.id]
  key_name      = aws_key_pair.generated_key.key_name
  tags = {
    Name = "CCTB-ProductionEnv"
  }
}