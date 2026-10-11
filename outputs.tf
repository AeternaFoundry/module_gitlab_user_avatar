output "user_avatars_id" {
  description = "Map of id values across all user_avatars, keyed the same as var.user_avatars except keys with no id are omitted"
  value       = { for k, v in gitlab_user_avatar.user_avatars : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_avatars_avatar" {
  description = "Map of avatar values across all user_avatars, keyed the same as var.user_avatars except keys with no avatar are omitted"
  value       = { for k, v in gitlab_user_avatar.user_avatars : k => v.avatar if v.avatar != null && length(v.avatar) > 0 }
}
output "user_avatars_avatar_hash" {
  description = "Map of avatar_hash values across all user_avatars, keyed the same as var.user_avatars except keys with no avatar_hash are omitted"
  value       = { for k, v in gitlab_user_avatar.user_avatars : k => v.avatar_hash if v.avatar_hash != null && length(v.avatar_hash) > 0 }
}
output "user_avatars_avatar_url" {
  description = "Map of avatar_url values across all user_avatars, keyed the same as var.user_avatars except keys with no avatar_url are omitted"
  value       = { for k, v in gitlab_user_avatar.user_avatars : k => v.avatar_url if v.avatar_url != null && length(v.avatar_url) > 0 }
}
output "user_avatars_token" {
  description = "Map of token values across all user_avatars, keyed the same as var.user_avatars except keys with no token are omitted"
  value       = { for k, v in gitlab_user_avatar.user_avatars : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}
output "user_avatars_user_id" {
  description = "Map of user_id values across all user_avatars, keyed the same as var.user_avatars except keys with no user_id are omitted"
  value       = { for k, v in gitlab_user_avatar.user_avatars : k => v.user_id if v.user_id != null }
}

