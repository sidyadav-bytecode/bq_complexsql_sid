include: "/views/**/*.view.lkml"

explore: employees {
  join: departments {
    type: left_outer
    sql_on: ${employees.department_id} = ${departments.department_id} ;;
    relationship: many_to_one
  }
  join: employee_projects {
    type: left_outer
    sql_on: ${employees.employee_id} = ${employee_projects.employee_id} ;;
    relationship: many_to_one
  }
}
