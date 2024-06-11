output "vpc_id" {
  value = module.networking.vpc_id
}

output "subnet_ids" {
  value = module.networking.subnet_ids
}

output "security_group_id" {
  value = module.networking.security_group_id
}

output "key_name" {
  value = module.keys.key_name
}