view: employee_projects {
  sql_table_name: `employee_dataset.employee_projects` ;;

  dimension: employee_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.employee_id ;;
  }
  dimension: hours_spent {
    type: number
    sql: ${TABLE}.hours_spent ;;
  }
  dimension: project_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.project_id ;;
  }

  measure: count {
    type: count
    drill_fields: [projects.project_id, projects.project_name, employees.employee_id, employees.employee_name]
  }
  measure: project_count {
    type: count_distinct
    sql: ${project_id};;
  }

  measure: average_projects_dept{
    type: average
    sql: ${project_id} ;;
  }
}
