# --- aws_s3tables_table_bucket ---
output "s3tables_table_buckets_id" {
  description = "Map of id values across all s3tables_table_buckets, keyed the same as var.s3tables_table_buckets"
  value       = module.s3tables_table_buckets.s3tables_table_buckets_id
}

output "s3tables_table_buckets_arn" {
  description = "Map of arn values across all s3tables_table_buckets, keyed the same as var.s3tables_table_buckets"
  value       = module.s3tables_table_buckets.s3tables_table_buckets_arn
}

output "s3tables_table_buckets_created_at" {
  description = "Map of created_at values across all s3tables_table_buckets, keyed the same as var.s3tables_table_buckets"
  value       = module.s3tables_table_buckets.s3tables_table_buckets_created_at
}

output "s3tables_table_buckets_encryption_configuration" {
  description = "Map of encryption_configuration values across all s3tables_table_buckets, keyed the same as var.s3tables_table_buckets"
  value       = module.s3tables_table_buckets.s3tables_table_buckets_encryption_configuration
}

output "s3tables_table_buckets_force_destroy" {
  description = "Map of force_destroy values across all s3tables_table_buckets, keyed the same as var.s3tables_table_buckets"
  value       = module.s3tables_table_buckets.s3tables_table_buckets_force_destroy
}

output "s3tables_table_buckets_maintenance_configuration" {
  description = "Map of maintenance_configuration values across all s3tables_table_buckets, keyed the same as var.s3tables_table_buckets"
  value       = module.s3tables_table_buckets.s3tables_table_buckets_maintenance_configuration
}

output "s3tables_table_buckets_name" {
  description = "Map of name values across all s3tables_table_buckets, keyed the same as var.s3tables_table_buckets"
  value       = module.s3tables_table_buckets.s3tables_table_buckets_name
}

output "s3tables_table_buckets_owner_account_id" {
  description = "Map of owner_account_id values across all s3tables_table_buckets, keyed the same as var.s3tables_table_buckets"
  value       = module.s3tables_table_buckets.s3tables_table_buckets_owner_account_id
}

output "s3tables_table_buckets_region" {
  description = "Map of region values across all s3tables_table_buckets, keyed the same as var.s3tables_table_buckets"
  value       = module.s3tables_table_buckets.s3tables_table_buckets_region
}

output "s3tables_table_buckets_tags" {
  description = "Map of tags values across all s3tables_table_buckets, keyed the same as var.s3tables_table_buckets"
  value       = module.s3tables_table_buckets.s3tables_table_buckets_tags
}

output "s3tables_table_buckets_tags_all" {
  description = "Map of tags_all values across all s3tables_table_buckets, keyed the same as var.s3tables_table_buckets"
  value       = module.s3tables_table_buckets.s3tables_table_buckets_tags_all
}

# --- aws_s3tables_namespace ---
output "s3tables_namespaces_id" {
  description = "Map of id values across all s3tables_namespaces, keyed the same as var.s3tables_namespaces"
  value       = module.s3tables_namespaces.s3tables_namespaces_id
}

output "s3tables_namespaces_created_at" {
  description = "Map of created_at values across all s3tables_namespaces, keyed the same as var.s3tables_namespaces"
  value       = module.s3tables_namespaces.s3tables_namespaces_created_at
}

output "s3tables_namespaces_created_by" {
  description = "Map of created_by values across all s3tables_namespaces, keyed the same as var.s3tables_namespaces"
  value       = module.s3tables_namespaces.s3tables_namespaces_created_by
}

output "s3tables_namespaces_namespace" {
  description = "Map of namespace values across all s3tables_namespaces, keyed the same as var.s3tables_namespaces"
  value       = module.s3tables_namespaces.s3tables_namespaces_namespace
}

output "s3tables_namespaces_owner_account_id" {
  description = "Map of owner_account_id values across all s3tables_namespaces, keyed the same as var.s3tables_namespaces"
  value       = module.s3tables_namespaces.s3tables_namespaces_owner_account_id
}

output "s3tables_namespaces_region" {
  description = "Map of region values across all s3tables_namespaces, keyed the same as var.s3tables_namespaces"
  value       = module.s3tables_namespaces.s3tables_namespaces_region
}

output "s3tables_namespaces_table_bucket_arn" {
  description = "Map of table_bucket_arn values across all s3tables_namespaces, keyed the same as var.s3tables_namespaces"
  value       = module.s3tables_namespaces.s3tables_namespaces_table_bucket_arn
}

# --- aws_s3tables_table ---
output "s3tables_tables_id" {
  description = "Map of id values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_id
}

output "s3tables_tables_arn" {
  description = "Map of arn values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_arn
}

output "s3tables_tables_created_at" {
  description = "Map of created_at values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_created_at
}

output "s3tables_tables_created_by" {
  description = "Map of created_by values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_created_by
}

output "s3tables_tables_encryption_configuration" {
  description = "Map of encryption_configuration values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_encryption_configuration
}

output "s3tables_tables_format" {
  description = "Map of format values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_format
}

output "s3tables_tables_maintenance_configuration" {
  description = "Map of maintenance_configuration values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_maintenance_configuration
}

output "s3tables_tables_metadata" {
  description = "Map of metadata values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_metadata
}

output "s3tables_tables_metadata_location" {
  description = "Map of metadata_location values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_metadata_location
}

output "s3tables_tables_modified_at" {
  description = "Map of modified_at values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_modified_at
}

output "s3tables_tables_modified_by" {
  description = "Map of modified_by values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_modified_by
}

output "s3tables_tables_name" {
  description = "Map of name values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_name
}

output "s3tables_tables_namespace" {
  description = "Map of namespace values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_namespace
}

output "s3tables_tables_owner_account_id" {
  description = "Map of owner_account_id values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_owner_account_id
}

output "s3tables_tables_region" {
  description = "Map of region values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_region
}

output "s3tables_tables_table_bucket_arn" {
  description = "Map of table_bucket_arn values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_table_bucket_arn
}

output "s3tables_tables_tags" {
  description = "Map of tags values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_tags
}

output "s3tables_tables_tags_all" {
  description = "Map of tags_all values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_tags_all
}

output "s3tables_tables_type" {
  description = "Map of type values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_type
}

output "s3tables_tables_version_token" {
  description = "Map of version_token values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_version_token
}

output "s3tables_tables_warehouse_location" {
  description = "Map of warehouse_location values across all s3tables_tables, keyed the same as var.s3tables_tables"
  value       = module.s3tables_tables.s3tables_tables_warehouse_location
}

# --- aws_s3tables_table_bucket_policy ---
output "s3tables_table_bucket_policies_id" {
  description = "Map of id values across all s3tables_table_bucket_policies, keyed the same as var.s3tables_table_bucket_policies"
  value       = module.s3tables_table_bucket_policies.s3tables_table_bucket_policies_id
}

output "s3tables_table_bucket_policies_region" {
  description = "Map of region values across all s3tables_table_bucket_policies, keyed the same as var.s3tables_table_bucket_policies"
  value       = module.s3tables_table_bucket_policies.s3tables_table_bucket_policies_region
}

output "s3tables_table_bucket_policies_resource_policy" {
  description = "Map of resource_policy values across all s3tables_table_bucket_policies, keyed the same as var.s3tables_table_bucket_policies"
  value       = module.s3tables_table_bucket_policies.s3tables_table_bucket_policies_resource_policy
}

output "s3tables_table_bucket_policies_table_bucket_arn" {
  description = "Map of table_bucket_arn values across all s3tables_table_bucket_policies, keyed the same as var.s3tables_table_bucket_policies"
  value       = module.s3tables_table_bucket_policies.s3tables_table_bucket_policies_table_bucket_arn
}

# --- aws_s3tables_table_bucket_replication ---
output "s3tables_table_bucket_replications_id" {
  description = "Map of id values across all s3tables_table_bucket_replications, keyed the same as var.s3tables_table_bucket_replications"
  value       = module.s3tables_table_bucket_replications.s3tables_table_bucket_replications_id
}

output "s3tables_table_bucket_replications_region" {
  description = "Map of region values across all s3tables_table_bucket_replications, keyed the same as var.s3tables_table_bucket_replications"
  value       = module.s3tables_table_bucket_replications.s3tables_table_bucket_replications_region
}

output "s3tables_table_bucket_replications_role" {
  description = "Map of role values across all s3tables_table_bucket_replications, keyed the same as var.s3tables_table_bucket_replications"
  value       = module.s3tables_table_bucket_replications.s3tables_table_bucket_replications_role
}

output "s3tables_table_bucket_replications_rule" {
  description = "Map of rule values across all s3tables_table_bucket_replications, keyed the same as var.s3tables_table_bucket_replications"
  value       = module.s3tables_table_bucket_replications.s3tables_table_bucket_replications_rule
}

output "s3tables_table_bucket_replications_table_bucket_arn" {
  description = "Map of table_bucket_arn values across all s3tables_table_bucket_replications, keyed the same as var.s3tables_table_bucket_replications"
  value       = module.s3tables_table_bucket_replications.s3tables_table_bucket_replications_table_bucket_arn
}

output "s3tables_table_bucket_replications_version_token" {
  description = "Map of version_token values across all s3tables_table_bucket_replications, keyed the same as var.s3tables_table_bucket_replications"
  value       = module.s3tables_table_bucket_replications.s3tables_table_bucket_replications_version_token
}

# --- aws_s3tables_table_policy ---
output "s3tables_table_policies_id" {
  description = "Map of id values across all s3tables_table_policies, keyed the same as var.s3tables_table_policies"
  value       = module.s3tables_table_policies.s3tables_table_policies_id
}

output "s3tables_table_policies_name" {
  description = "Map of name values across all s3tables_table_policies, keyed the same as var.s3tables_table_policies"
  value       = module.s3tables_table_policies.s3tables_table_policies_name
}

output "s3tables_table_policies_namespace" {
  description = "Map of namespace values across all s3tables_table_policies, keyed the same as var.s3tables_table_policies"
  value       = module.s3tables_table_policies.s3tables_table_policies_namespace
}

output "s3tables_table_policies_region" {
  description = "Map of region values across all s3tables_table_policies, keyed the same as var.s3tables_table_policies"
  value       = module.s3tables_table_policies.s3tables_table_policies_region
}

output "s3tables_table_policies_resource_policy" {
  description = "Map of resource_policy values across all s3tables_table_policies, keyed the same as var.s3tables_table_policies"
  value       = module.s3tables_table_policies.s3tables_table_policies_resource_policy
}

output "s3tables_table_policies_table_bucket_arn" {
  description = "Map of table_bucket_arn values across all s3tables_table_policies, keyed the same as var.s3tables_table_policies"
  value       = module.s3tables_table_policies.s3tables_table_policies_table_bucket_arn
}

# --- aws_s3tables_table_replication ---
output "s3tables_table_replications_id" {
  description = "Map of id values across all s3tables_table_replications, keyed the same as var.s3tables_table_replications"
  value       = module.s3tables_table_replications.s3tables_table_replications_id
}

output "s3tables_table_replications_region" {
  description = "Map of region values across all s3tables_table_replications, keyed the same as var.s3tables_table_replications"
  value       = module.s3tables_table_replications.s3tables_table_replications_region
}

output "s3tables_table_replications_role" {
  description = "Map of role values across all s3tables_table_replications, keyed the same as var.s3tables_table_replications"
  value       = module.s3tables_table_replications.s3tables_table_replications_role
}

output "s3tables_table_replications_rule" {
  description = "Map of rule values across all s3tables_table_replications, keyed the same as var.s3tables_table_replications"
  value       = module.s3tables_table_replications.s3tables_table_replications_rule
}

output "s3tables_table_replications_table_arn" {
  description = "Map of table_arn values across all s3tables_table_replications, keyed the same as var.s3tables_table_replications"
  value       = module.s3tables_table_replications.s3tables_table_replications_table_arn
}

output "s3tables_table_replications_version_token" {
  description = "Map of version_token values across all s3tables_table_replications, keyed the same as var.s3tables_table_replications"
  value       = module.s3tables_table_replications.s3tables_table_replications_version_token
}


