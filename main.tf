module "demo_workspaces" {
  for_each = var.demo_workspaces
  source   = "app.terraform.io/engfors/workspace/terraform"
  version  = "1.1.0"

  vcs = true

  workspace = [
    {
      name                  = each.key
      organization          = var.organization
      auto_apply            = false
      file_triggers_enabled = true
      operations            = true
      ssh_key_id            = ""
      trigger_prefixes      = each.value.vcs_path
      working_directory     = each.value.vcs_path
      tf_version            = var.tf_version
      queue_all_runs        = false
      identifier            = each.value.vcs_repo
      branch                = ""
      ingress_submodules    = false
      oauth_token_id        = var.github_oauth_token_id
    }
  ]

  workspace_variables = [
    {
      key       = "google_project"
      value     = each.value.google_project
      category  = "terraform"
      hcl       = "false"
      sensitive = "false"
    }
  ]

  notification_configuration = [
    {
      notification = false
    }
  ]
}
