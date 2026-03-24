# Shared DNS configuration (Route53, Cloud DNS, Azure DNS)

resource "aws_route53_zone" "main" {
  name = "example.com"
}
