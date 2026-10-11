variable "user_avatars" {
  description = <<EOT
Map of user_avatars, attributes below
Required:
    - avatar
    - user_id
Optional:
    - avatar_hash
    - token
EOT

  type = map(object({
    avatar      = string
    user_id     = number
    avatar_hash = optional(string)
    token       = optional(string)
  }))
}

