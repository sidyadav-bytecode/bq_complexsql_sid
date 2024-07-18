include: "/views/**/*.view.lkml"

explore: employee_projects {
  join: projects {
    type: left_outer
    sql_on: ${employee_projects.project_id} = ${projects.project_id} ;;
    relationship: many_to_one
  }

  join: employees {
    type: left_outer
    sql_on: ${employee_projects.employee_id} = ${employees.employee_id} ;;
    relationship: many_to_one
  }

  join: departments {
    type: left_outer
    sql_on: ${projects.department_id} = ${departments.department_id} ;;
    relationship: many_to_one
  }
  join: x_employee_project {
    sql:  ;;
    relationship: one_to_one
  }
}
