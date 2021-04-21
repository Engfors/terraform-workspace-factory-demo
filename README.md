## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.24 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_demo_workspaces"></a> [demo\_workspaces](#module\_demo\_workspaces) | app.terraform.io/engfors/workspace/terraform | 1.1.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_demo_workspaces"></a> [demo\_workspaces](#input\_demo\_workspaces) | This map is used to create workspaces | <pre>map(object({<br>    vcs_path       = string<br>    vcs_repo       = string<br>    google_project = string<br>  }))</pre> | `{}` | no |
| <a name="input_github_oauth_token_id"></a> [github\_oauth\_token\_id](#input\_github\_oauth\_token\_id) | Oauth token used by VCS connection | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | Terraform Cloud organization where the workspaces will be created | `string` | n/a | yes |
| <a name="input_tf_version"></a> [tf\_version](#input\_tf\_version) | Version of Terraform the workspace will be created with | `string` | n/a | yes |

## Outputs

No outputs.
