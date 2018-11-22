view: slx_opp_prod_acct_fact {
  sql_table_name: DISCED.SLX_OPP_PROD_ACCT_FACT ;;

  dimension: account_key {
    type: number
    sql: ${TABLE}."ACCOUNT_KEY" ;;
  }

  dimension: enrollment {
    type: number
    sql: ${TABLE}."ENROLLMENT" ;;
  }

  dimension: opportunity_key {
    type: number
    sql: ${TABLE}."OPPORTUNITY_KEY" ;;
  }

  dimension: oppprodacct_id {
    type: string
    sql: ${TABLE}."OPPPRODACCT_ID" ;;
  }

  dimension: oppproduct_id {
    type: string
    sql: ${TABLE}."OPPPRODUCT_ID" ;;
  }

  dimension_group: period_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."PERIOD_END_DATE" ;;
  }

  dimension_group: period_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."PERIOD_START_DATE" ;;
  }

  dimension: product_key {
    type: number
    sql: ${TABLE}."PRODUCT_KEY" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."QUANTITY" ;;
  }

  dimension: student_count {
    type: number
    sql: ${TABLE}."STUDENT_COUNT" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
