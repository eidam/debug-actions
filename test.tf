terraform {
  backend "http" {
    address = "https://terraform-state.eidam.cf/github/eidam/debug-actions/main"
    # Optional
    lock_address = "https://terraform-state.eidam.cf/github/eidam/debug-actions/main"
    unlock_address = "https://terraform-state.eidam.cf/github/eidam/debug-actions/main"
  }
}

// yooooooo
resource null_resource test {
  count = 542
  triggers = {
      uuid = uuid()
  }
}
