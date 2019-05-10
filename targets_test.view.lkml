view: targets_test {
  derived_table: {
    sql: select 2019as month, 'Pac West'as Region, 'comp A'as Component,'Dominique Coulon'as Rep,100as target
      union select 2019,'Pac West','comp B','Dominique Coulon',50
      union select 2019,'Pac West','comp A','Jeree Gooing',200
      union select 2019,'Pac West','comp B','Jeree Gooing',300
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: month {
    type: number
    sql: ${TABLE}."MONTH" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: component {
    type: string
    sql: ${TABLE}."COMPONENT" ;;
  }

  dimension: rep {
    type: string
    sql: ${TABLE}."REP" ;;
  }

  dimension: target {
    type: number
    sql: ${TABLE}."TARGET" ;;
  }

  set: detail {
    fields: [month, region, component, rep, target]
  }
}
