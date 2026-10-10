output "ebs_default_kms_keys_id" {
  description = "Map of id values across all ebs_default_kms_keys, keyed the same as var.ebs_default_kms_keys"
  value       = { for k, v in aws_ebs_default_kms_key.ebs_default_kms_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ebs_default_kms_keys_key_arn" {
  description = "Map of key_arn values across all ebs_default_kms_keys, keyed the same as var.ebs_default_kms_keys"
  value       = { for k, v in aws_ebs_default_kms_key.ebs_default_kms_keys : k => v.key_arn if v.key_arn != null && length(v.key_arn) > 0 }
}
output "ebs_default_kms_keys_region" {
  description = "Map of region values across all ebs_default_kms_keys, keyed the same as var.ebs_default_kms_keys"
  value       = { for k, v in aws_ebs_default_kms_key.ebs_default_kms_keys : k => v.region if v.region != null && length(v.region) > 0 }
}

