view: sls_team_rep_xref {
  sql_table_name: DISCED.SLS_TEAM_REP_XREF ;;

  dimension: my_region {
    type: number
    sql: ${TABLE}."MY_REGION" ;;
  }

  dimension: new_business_ind {
    type: number
    sql: ${TABLE}."NEW_BUSINESS_IND" ;;
  }

  dimension: sales_rep_first_name {
    type: string
    sql: ${TABLE}."SALES_REP_FIRST_NAME" ;;
  }

  dimension: sales_rep_key {
    type: number
    sql: ${TABLE}."SALES_REP_KEY" ;;
  }

  dimension: sales_rep_last_name {
    type: string
    sql: ${TABLE}."SALES_REP_LAST_NAME" ;;
  }

  dimension: sales_team_key {
    type: number
    sql: ${TABLE}."SALES_TEAM_KEY" ;;
  }

  dimension: year_key {
    type: number
    sql: ${TABLE}."YEAR_KEY" ;;
  }

  measure: count {
    type: count
    drill_fields: [sales_rep_first_name, sales_rep_last_name]
  }
}
