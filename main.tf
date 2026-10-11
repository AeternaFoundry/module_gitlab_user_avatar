resource "gitlab_user_avatar" "user_avatars" {
  for_each = var.user_avatars

  avatar      = each.value.avatar
  user_id     = each.value.user_id
  avatar_hash = each.value.avatar_hash
  token       = each.value.token
}

