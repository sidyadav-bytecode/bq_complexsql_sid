include: "/views/**/*.view.lkml"

explore: employees {
  join: departments {
    type: left_outer
    sql_on: ${employees.department_id} = ${departments.department_id} ;;
    relationship: many_to_one
  }
}
