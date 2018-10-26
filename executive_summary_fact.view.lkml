view: executive_summary_fact {
  sql_table_name: DISCED.EXECUTIVE_SUMMARY_FACT ;;

  dimension: bodypolitic_key {
    type: number
    sql: ${TABLE}."BODYPOLITIC_KEY" ;;
  }

  dimension: component_key {
    type: number
    sql: ${TABLE}."COMPONENT_KEY" ;;
  }

  dimension: month_key {
    type: number
    sql: ${TABLE}."MONTH_KEY" ;;
  }

#   dimension: new {
#     type: number
#     sql: ${TABLE}."NEW" ;;
#   }


  measure: new {
    type: sum
    sql: ${TABLE}."NEW" ;;
  }
  dimension: platform_code {
    type: number
    sql: ${TABLE}."PLATFORM_CODE" ;;
  }

  dimension: product_class_key {
    type: number
    sql: ${TABLE}."PRODUCT_CLASS_KEY" ;;
  }

  dimension: product_line_key {
    type: number
    sql: ${TABLE}."PRODUCT_LINE_KEY" ;;
  }

#   dimension: renewal {
#     type: number
#     sql: ${TABLE}."RENEWAL" ;;
#   }

  measure: renewal {
    type: sum
    sql: ${TABLE}."RENEWAL" ;;
  }

  dimension: renewal_team_flag {
    type: number
    sql: ${TABLE}."RENEWAL_TEAM_FLAG" ;;
  }

  dimension: sales_rep_key {
    type: number
    sql: ${TABLE}."SALES_REP_KEY" ;;
  }

  dimension: territory_key {
    type: number
    sql: ${TABLE}."TERRITORY_KEY" ;;
  }

#   dimension: total {
#     type: number
#     sql: ${TABLE}."TOTAL" ;;
#   }

  measure: total {
    type: sum
    sql: ${TABLE}."TOTAL" ;;
  }
  measure: count {
    type: count
    drill_fields: []
  }
}
