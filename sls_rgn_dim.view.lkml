view: sls_rgn_dim {
  sql_table_name: DISCED.SLS_RGN_DIM ;;

  dimension: region_desc {
    type: string
    sql: ${TABLE}."REGION_DESC" ;;
  }

  dimension: region_key {
    type: number
    sql: ${TABLE}."REGION_KEY" ;;
  }

  dimension: target {
    type: number
    sql: ${TABLE}."TARGET" ;;
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
