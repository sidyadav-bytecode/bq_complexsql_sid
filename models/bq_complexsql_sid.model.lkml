connection: "bq_complexsql"

# include all the views
include: "/views/**/*.view.lkml"

# include all the explores
include: "/explores/**/*.explore.lkml"

datagroup: bq_complexsql_sid_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bq_complexsql_sid_default_datagroup
