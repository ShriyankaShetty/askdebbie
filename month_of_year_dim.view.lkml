view: month_of_year_dim {
  sql_table_name: DISCED.MONTH_OF_YEAR_DIM ;;

  dimension: month_desc {
    type: string
    sql: ${TABLE}."MONTH_DESC" ;;
  }

  dimension: month_of_year {
    type: number
    sql: ${TABLE}."MONTH_OF_YEAR" ;;
  }

  dimension: month_short_desc {
    type: string
    sql: ${TABLE}."MONTH_SHORT_DESC" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
