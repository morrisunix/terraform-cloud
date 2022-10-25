resource "random_password" "my_password" {
  length = var.length < 8 ? 8 : var.length
}

output password {
  value=random_password.my_password.result
}
