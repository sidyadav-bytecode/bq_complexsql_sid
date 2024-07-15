view: projects {
  sql_table_name: `employee_dataset.projects` ;;
  drill_fields: [project_id]

  dimension: project_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.project_id ;;
  }
  dimension: budget {
    type: number
    sql: ${TABLE}.budget ;;
  }
  dimension: department_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.department_id ;;
  }
  dimension: end_date {
    type: string
    sql: ${TABLE}.end_date ;;
  }
  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }
  measure: count {
    type: count
    drill_fields: [project_id, project_name, departments.department_id, departments.department_name, employee_projects.count]
  }
  measure: min_budget {
    type: min
    sql: ${budget} ;;
  }
  measure: max_budget {
    type: max
    sql: ${budget} ;;
  }
}
