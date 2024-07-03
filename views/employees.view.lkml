view: employees {
  sql_table_name: `employee_dataset.employees` ;;
  drill_fields: [employee_id]

  dimension: employee_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.employee_id ;;
  }
  dimension: department_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.department_id ;;
  }
  dimension: employee_name {
    type: string
    sql: ${TABLE}.employee_name ;;
  }
  dimension: manager_id {
    type: number
    sql: ${TABLE}.manager_id ;;
  }
  dimension: salary {
    type: number
    sql: ${TABLE}.salary ;;
  }
  measure: count {
    type: count
    drill_fields: [employee_id, employee_name, departments.department_id, departments.department_name, employee_projects.count]
  }
}
