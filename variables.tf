variable "organization" {
  description = "Terraform Cloud organization where the workspaces will be created"
  type        = string
}

variable "tf_version" {
  description = "Version of Terraform the workspace will be created with"
  type        = string
}

variable "github_oauth_token_id" {
  description = "Oauth token used by VCS connection"
  type        = string
}

variable "demo_workspaces" {
  description = "This map is used to create workspaces"
  type = map(object({
    vcs_path       = string
    vcs_repo       = string
    google_project = string
  }))
  default = {}
}
