resource "aws_route53_zone" "dev" {
  name          = "dev.usuarioroot.com"
  force_destroy = false

  vpc {
    vpc_id = aws_vpc.training_vpc_1.id
  }
      tags                 = {
    Name    = "training-route53"
    Project = "Training"
  }
}
resource "aws_route53_record" "training_server1" {
  zone_id = aws_route53_zone.dev.zone_id
  name    = "training_server1.dev.usuarioroot.com"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.training_server1.private_ip]
}
resource "aws_route53_record" "training_server2" {
  zone_id = aws_route53_zone.dev.zone_id
  name    = "training_server2.dev.usuarioroot.com"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.training_server2.private_ip]
}