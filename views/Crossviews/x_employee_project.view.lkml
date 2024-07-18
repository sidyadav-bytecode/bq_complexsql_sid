view: x_employee_project {

measure: avg_employees_per_department {
  type: number
  sql: ${employees.count}/nullif(${departments.count},0) ;;
}

measure: average_project_count {
    type: number
    sql: count( ${employee_projects.project_id}) / count( distinct ${employees.employee_id});;
}

}
