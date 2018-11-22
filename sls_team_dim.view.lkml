view: sls_team_dim {
  sql_table_name: DISCED.SLS_TEAM_DIM ;;

  dimension: team_desc {
    type: string
    sql: ${TABLE}."TEAM_DESC" ;;
  }

  dimension: team_key {
    type: number
    sql: ${TABLE}."TEAM_KEY" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
