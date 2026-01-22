output "alb_dns" {
  value = aws_lb.main.dns_name
}

output "app_instances" {
  value = aws_instance.app[*].public_ip
}

output "rds_endpoint" {
  value = aws_db_instance.db.endpoint
}
