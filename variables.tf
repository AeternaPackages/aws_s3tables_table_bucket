variable "s3tables_table_buckets" {
  description = <<EOT
Map of s3tables_table_buckets, attributes below
Required:
    - name
Optional:
    - encryption_configuration
    - force_destroy
    - maintenance_configuration
    - region
    - tags
Nested s3tables_namespaces (aws_s3tables_namespace):
    Required:
        - namespace
    Optional:
        - region
Nested s3tables_tables (aws_s3tables_table):
    Required:
        - format
        - name
        - namespace
    Optional:
        - encryption_configuration
        - maintenance_configuration
        - region
        - tags
        - metadata (block)
    Nested s3tables_table_replications (aws_s3tables_table_replication):
        Required:
            - role
        Optional:
            - region
            - rule (block)
Nested s3tables_table_bucket_policies (aws_s3tables_table_bucket_policy):
    Required:
        - resource_policy
    Optional:
        - region
Nested s3tables_table_bucket_replications (aws_s3tables_table_bucket_replication):
    Required:
        - role
    Optional:
        - region
        - rule (block)
Nested s3tables_table_policies (aws_s3tables_table_policy):
    Required:
        - name
        - namespace
        - resource_policy
    Optional:
        - region
EOT

  type = map(object({
    name                      = string
    encryption_configuration  = optional(list(any))
    force_destroy             = optional(bool)
    maintenance_configuration = optional(list(any))
    region                    = optional(string)
    tags                      = optional(map(string))
    s3tables_namespaces = optional(map(object({
      namespace = string
      region    = optional(string)
    })))
    s3tables_tables = optional(map(object({
      format                    = string
      name                      = string
      namespace                 = string
      encryption_configuration  = optional(list(any))
      maintenance_configuration = optional(list(any))
      region                    = optional(string)
      tags                      = optional(map(string))
      metadata = optional(list(object({
        iceberg = optional(list(object({
          properties = optional(map(string))
          schema = optional(list(object({
            field = optional(list(object({
              name     = string
              required = optional(bool)
              type     = string
            })))
          })))
        })))
      })))
      s3tables_table_replications = optional(map(object({
        role   = string
        region = optional(string)
        rule = optional(list(object({
          destination = optional(list(object({
            destination_table_bucket_arn = string
          })))
        })))
      })))
    })))
    s3tables_table_bucket_policies = optional(map(object({
      resource_policy = string
      region          = optional(string)
    })))
    s3tables_table_bucket_replications = optional(map(object({
      role   = string
      region = optional(string)
      rule = optional(list(object({
        destination = optional(list(object({
          destination_table_bucket_arn = string
        })))
      })))
    })))
    s3tables_table_policies = optional(map(object({
      name            = string
      namespace       = string
      resource_policy = string
      region          = optional(string)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.s3tables_table_buckets) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.s3tables_table_buckets : [for kk in keys(coalesce(v0.s3tables_namespaces, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.s3tables_table_buckets : [for kk in keys(coalesce(v0.s3tables_tables, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.s3tables_table_buckets : [for k1, v1 in coalesce(v0.s3tables_tables, {}) : [for kk in keys(coalesce(v1.s3tables_table_replications, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.s3tables_table_buckets : [for kk in keys(coalesce(v0.s3tables_table_bucket_policies, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.s3tables_table_buckets : [for kk in keys(coalesce(v0.s3tables_table_bucket_replications, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.s3tables_table_buckets : [for kk in keys(coalesce(v0.s3tables_table_policies, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
