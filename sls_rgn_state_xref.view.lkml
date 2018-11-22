view: sls_rgn_state_xref {
  sql_table_name: DISCED.SLS_RGN_STATE_XREF ;;

  dimension: bodypolitic_key {
    type: number
    sql: ${TABLE}."BODYPOLITIC_KEY" ;;
  }

  dimension: country_key {
    type: number
    sql: ${TABLE}."COUNTRY_KEY" ;;
  }

  dimension: region_key {
    type: number
    sql: ${TABLE}."REGION_KEY" ;;
  }

  dimension: territory_key {
    type: number
    sql: ${TABLE}."TERRITORY_KEY" ;;
  }

  dimension: year_key {
    type: number
    sql: ${TABLE}."YEAR_KEY" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
