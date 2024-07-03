include: "/views/**/*.view.lkml"

explore: projects {
  join: departments {
    type: left_outer
    sql_on: ${projects.department_id} = ${departments.department_id} ;;
    relationship: many_to_one
  }
}
