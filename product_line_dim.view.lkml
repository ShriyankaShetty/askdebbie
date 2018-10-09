view: product_line_dim {
  sql_table_name: DISCED.PRODUCT_LINE_DIM ;;

  dimension: product_line_desc {
    type: string
    sql: ${TABLE}."PRODUCT_LINE_DESC" ;;
  }

  dimension: product_line_key {
    type: number
    sql: ${TABLE}."PRODUCT_LINE_KEY" ;;
  }

  dimension: product_line_short_desc {
    type: string
    sql: ${TABLE}."PRODUCT_LINE_SHORT_DESC" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
