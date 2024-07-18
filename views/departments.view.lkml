view: departments {
  sql_table_name: `employee_dataset.departments` ;;
  drill_fields: [department_id]

  dimension: department_id {

    type: number
    sql: ${TABLE}.department_id ;;
  }
  dimension: department_name {
    type: string
    sql: ${TABLE}.department_name ;;
  }
  measure: count {
    type: count
    drill_fields: [department_id, department_name, projects.count, employees.count]
  }
}
