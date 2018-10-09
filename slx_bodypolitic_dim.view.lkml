view: slx_bodypolitic_dim {
  sql_table_name: DISCED.SLX_BODYPOLITIC_DIM ;;

  dimension: bodypolitic_code {
    type: string
    sql: ${TABLE}."BODYPOLITIC_CODE" ;;
  }

  dimension: bodypolitic_key {
    type: number
    sql: ${TABLE}."BODYPOLITIC_KEY" ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}."COUNTRY_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name]
  }
}
