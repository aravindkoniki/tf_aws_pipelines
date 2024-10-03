plugin "aws" {
    enabled = true
    version = "0.21.1"
    source  = "github.com/terraform-linters/tflint-ruleset-aws"
    deep_check = false
}

config {
  module = false
  force = false
  disabled_by_default = false
  ignore_module = {}
  varfile = []
  variables = []
}
rule "terraform_unused_declarations" {
  enabled = true
}

rule "terraform_documented_variables" {
  enabled = true
}

rule "terraform_documented_outputs" {
  enabled = true
}

rule "terraform_deprecated_index" {
  enabled = false
}

rule "terraform_standard_module_structure" {
  enabled = false
}

rule "terraform_module_pinned_source" {
  enabled = false
}

rule "terraform_typed_variables" {
  enabled = false
}

rule "terraform_deprecated_interpolation" {
  enabled = false
}

rule "aws_route_specified_multiple_targets" {
  enabled = false
}

rule "terraform_required_version" {
  enabled = false
}

rule "terraform_required_providers" {
  enabled = false
}