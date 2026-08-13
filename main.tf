locals {
  s3tables_table_buckets = { for k1, v1 in var.s3tables_table_buckets : k1 => { encryption_configuration = v1.encryption_configuration, force_destroy = v1.force_destroy, maintenance_configuration = v1.maintenance_configuration, name = v1.name, region = v1.region, tags = v1.tags } }

  s3tables_namespaces = merge([
    for k1, v1 in var.s3tables_table_buckets : {
      for k2, v2 in coalesce(v1.s3tables_namespaces, {}) :
      "${k1}/${k2}" => merge(v2, {
        table_bucket_arn = module.s3tables_table_buckets.s3tables_table_buckets_arn["${k1}"]
      })
    }
  ]...)

  s3tables_tables = merge([
    for k1, v1 in var.s3tables_table_buckets : {
      for k2, v2 in coalesce(v1.s3tables_tables, {}) :
      "${k1}/${k2}" => merge(v2, {
        table_bucket_arn = module.s3tables_table_buckets.s3tables_table_buckets_arn["${k1}"]
      })
    }
  ]...)

  s3tables_table_bucket_policies = merge([
    for k1, v1 in var.s3tables_table_buckets : {
      for k2, v2 in coalesce(v1.s3tables_table_bucket_policies, {}) :
      "${k1}/${k2}" => merge(v2, {
        table_bucket_arn = module.s3tables_table_buckets.s3tables_table_buckets_arn["${k1}"]
      })
    }
  ]...)

  s3tables_table_bucket_replications = merge([
    for k1, v1 in var.s3tables_table_buckets : {
      for k2, v2 in coalesce(v1.s3tables_table_bucket_replications, {}) :
      "${k1}/${k2}" => merge(v2, {
        table_bucket_arn = module.s3tables_table_buckets.s3tables_table_buckets_arn["${k1}"]
      })
    }
  ]...)

  s3tables_table_policies = merge([
    for k1, v1 in var.s3tables_table_buckets : {
      for k2, v2 in coalesce(v1.s3tables_table_policies, {}) :
      "${k1}/${k2}" => merge(v2, {
        table_bucket_arn = module.s3tables_table_buckets.s3tables_table_buckets_arn["${k1}"]
      })
    }
  ]...)

  s3tables_table_replications = merge([
    for k1, v1 in var.s3tables_table_buckets : merge([
      for k2, v2 in coalesce(v1.s3tables_tables, {}) : {
        for k3, v3 in coalesce(v2.s3tables_table_replications, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          table_arn = module.s3tables_tables.s3tables_tables_arn["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)
}

module "s3tables_table_buckets" {
  source                 = "git::https://github.com/AeternaModules/aws_s3tables_table_bucket.git?ref=v6.58.0"
  s3tables_table_buckets = local.s3tables_table_buckets
}

module "s3tables_namespaces" {
  source              = "git::https://github.com/AeternaModules/aws_s3tables_namespace.git?ref=v6.58.0"
  s3tables_namespaces = local.s3tables_namespaces
  depends_on          = [module.s3tables_table_buckets]
}

module "s3tables_tables" {
  source          = "git::https://github.com/AeternaModules/aws_s3tables_table.git?ref=v6.58.0"
  s3tables_tables = local.s3tables_tables
  depends_on      = [module.s3tables_table_buckets]
}

module "s3tables_table_bucket_policies" {
  source                         = "git::https://github.com/AeternaModules/aws_s3tables_table_bucket_policy.git?ref=v6.58.0"
  s3tables_table_bucket_policies = local.s3tables_table_bucket_policies
  depends_on                     = [module.s3tables_table_buckets]
}

module "s3tables_table_bucket_replications" {
  source                             = "git::https://github.com/AeternaModules/aws_s3tables_table_bucket_replication.git?ref=v6.58.0"
  s3tables_table_bucket_replications = local.s3tables_table_bucket_replications
  depends_on                         = [module.s3tables_table_buckets]
}

module "s3tables_table_policies" {
  source                  = "git::https://github.com/AeternaModules/aws_s3tables_table_policy.git?ref=v6.58.0"
  s3tables_table_policies = local.s3tables_table_policies
  depends_on              = [module.s3tables_table_buckets]
}

module "s3tables_table_replications" {
  source                      = "git::https://github.com/AeternaModules/aws_s3tables_table_replication.git?ref=v6.58.0"
  s3tables_table_replications = local.s3tables_table_replications
  depends_on                  = [module.s3tables_tables]
}

