view: x_department_project {

  measure: distinct_project_id {
    type: count_distinct
    sql_distinct_key: ${departments.department_id} ;;
    sql: ${employee_projects.project_id};;
  }

  measure: distinct_employee_id {
    type: count_distinct
    sql_distinct_key: ${departments.department_id} ;;
    sql: ${employees.employee_id};;
  }

  measure: average_project_count_test {
    type: number
    sql: ${distinct_project_id} / ${distinct_employee_id} ;;
  }


}
