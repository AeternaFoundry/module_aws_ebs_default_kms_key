variable "ebs_default_kms_keys" {
  description = <<EOT
Map of ebs_default_kms_keys, attributes below
Required:
    - key_arn
Optional:
    - region
EOT

  type = map(object({
    key_arn = string
    region  = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

