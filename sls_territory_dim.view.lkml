view: sls_territory_dim {
  sql_table_name: DISCED.SLS_TERRITORY_DIM ;;

  dimension: dashboard_territory_desc {
    type: string
    sql: ${TABLE}."DASHBOARD_TERRITORY_DESC" ;;
  }

  dimension: territory_desc {
    type: string
    sql: ${TABLE}."TERRITORY_DESC" ;;
    label: "By State"
    drill_fields: [slx_bodypolitic_dim.bodypolitic_code]
  }

  dimension: territory_key {
    type: number
    sql: ${TABLE}."TERRITORY_KEY" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
