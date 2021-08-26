locals {
  conformance_pack_logic_common_tags = {
    service = "logic"
  }
}

control "logic_app_workflow_logging_enabled" {
  title       = "Resource logs in Logic Apps should be enabled"
  description = "Audit enabling of resource logs. This enables you to recreate activity trails to use for investigation purposes; when a security incident occurs or when your network is compromised."
  sql         = query.logic_app_workflow_logging_enabled.sql

  tags = merge(local.conformance_pack_logic_common_tags, {
    hipaa_hitrust_v92 = "true"
  })
}
