view: x_employee_project {

measure: cross_view_average_project_count {
    type: average
    sql: ${employee_projects.project_count} ;;
}

}
