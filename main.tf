provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "bastion" {
  ami                         = "ami-022e8cc8f0d3c52fd"
  instance_type               = "t2.micro"
  security_groups             = ["${aws_security_group.sg-bastion-manoj.name}"]
  key_name                    = aws_key_pair.bastion_key.key_name  
  associate_public_ip_address = true
  tags = {
      Name = "bastion_host_server_manoj" 
  }
}

resource "aws_key_pair" "bastion_key" {
  key_name   = "bastionkey_manoj"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC42V3GVcf2BnRm7ZJSdNKgBi9EUJCJd7urD1xHaTv+XXq+ezS3Y7C3U1wBPaUhixp0/a1hKMKz5c+GLwHU/71yq8pXoh7sX5Xtq11ifOCNuUBIuo3V3BwbUz3Trm+M4X2+AMQ8A3zwRrNenWUqEVrcjTdTSINNuNp99R8XlTM1iOtZH2HuXZi+0gJKYAR46mLpUWcHNzCO1ux5Kd7skbhLq6KapRu+BGUFDVBP/Zz/O0JHigiCtHCj+F+QwXXRWA/7OGe9j9Jhl+O7Dt5Vg6lwcbIJP8hZu6Y6XjuiX3D0eB6/oM8N/6mgE7jx3DvR5ZxWMf3MnufM4vZo4kFOM66z4rIwz9CeRX7K/Glha6My8gioTha1v7CUHVv8hZvsEpuT18uxrCyjWdgKsPhMZm7j4dgphhhxycoN1p2U0ReleviGEJoqyYHGLQyi179ssscbEi2oU270hJEIgTSQCS0dpTJtxnLYB/T+pEVZ5rOlZfk/wZSHp1gToFB01OQVPmF3u/6CzjKln/tctXfBf8cbqz6phnj0VQ9E6MzHk5U7Cmy6m9tifwvxTbK+7aUnAoQA75AcMqtLIXjb/ppuqlV4lqcG5Gro/PkGkxJAV16dfPxxwQnfXoV/FLdCgMnlmVomStauuzcOGggUix/hUsmc+79MQxcR+gH7gong/IPh/Q== manoj@manoj-VirtualBox"
}
