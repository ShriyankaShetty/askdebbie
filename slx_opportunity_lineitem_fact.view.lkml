view: slx_opportunity_lineitem_fact {
  sql_table_name: DISCED.SLX_OPPORTUNITY_LINEITEM_FACT ;;

  dimension: actual_credited_sales_rep_id {
    type: string
    sql: ${TABLE}."ACTUAL_CREDITED_SALES_REP_ID" ;;
  }

  dimension: actual_credited_sales_rep_key {
    type: number
    sql: ${TABLE}."ACTUAL_CREDITED_SALES_REP_KEY" ;;
  }

  dimension_group: actual_period_end {
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
    sql: ${TABLE}."ACTUAL_PERIOD_END_DATE" ;;
  }

  dimension_group: actual_period_start {
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
    sql: ${TABLE}."ACTUAL_PERIOD_START_DATE" ;;
  }

  dimension: annualized_ccd {
    type: number
    sql: ${TABLE}."ANNUALIZED_CCD" ;;
  }

  dimension: contract_building_cnt {
    type: number
    sql: ${TABLE}."CONTRACT_BUILDING_CNT" ;;
  }

  dimension: contract_years_cnt {
    type: number
    sql: ${TABLE}."CONTRACT_YEARS_CNT" ;;
  }

  dimension: conversion_rate {
    type: number
    sql: ${TABLE}."CONVERSION_RATE" ;;
  }

  dimension: credited_sales_rep_key {
    type: number
    sql: ${TABLE}."CREDITED_SALES_REP_KEY" ;;
  }

  dimension: discount_pct {
    type: number
    sql: ${TABLE}."DISCOUNT_PCT" ;;
  }



  dimension: li_duration {
    type: number
    sql: ${TABLE}."LI_DURATION" ;;
  }

  dimension: list_price {
    type: number
    sql: ${TABLE}."LIST_PRICE" ;;
  }

  dimension: new_ratio {
    type: number
    sql: ${TABLE}."NEW_RATIO" ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}."NOTES" ;;
  }

  dimension: opportunity_key {
    type: number
    sql: ${TABLE}."OPPORTUNITY_KEY" ;;
  }

  dimension: opportunity_product_id {
    type: string
    sql: ${TABLE}."OPPORTUNITY_PRODUCT_ID" ;;
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

  dimension: product_price_adjusted_ind {
    type: number
    sql: ${TABLE}."PRODUCT_PRICE_ADJUSTED_IND" ;;
  }

  dimension: product_price_dollars {
    type: number
    sql: ${TABLE}."PRODUCT_PRICE_DOLLARS" ;;
  }

  dimension_group: product_price_effective {
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
    sql: ${TABLE}."PRODUCT_PRICE_EFFECTIVE_DATE" ;;
  }

  dimension: product_quantity_cnt {
    type: number
    sql: ${TABLE}."PRODUCT_QUANTITY_CNT" ;;
  }

  dimension: program_desc {
    type: string
    sql: ${TABLE}."PROGRAM_DESC" ;;
  }

  dimension: program_desc_actual {
    type: string
    sql: ${TABLE}."PROGRAM_DESC_ACTUAL" ;;
  }

  dimension: program_new {
    type: string
    sql: ${TABLE}."PROGRAM_NEW" ;;
  }

  dimension: prorated_price {
    type: number
    sql: ${TABLE}."PRORATED_PRICE" ;;
  }

  dimension: renewal_ratio {
    type: number
    sql: ${TABLE}."RENEWAL_RATIO" ;;
  }

  dimension: sales_credit_fctr {
    type: number
    sql: ${TABLE}."SALES_CREDIT_FCTR" ;;
  }

  dimension: student_cnt {
    type: number
    sql: ${TABLE}."STUDENT_CNT" ;;
  }

  dimension: tb_new_unique_stud_cnt {
    type: number
    sql: ${TABLE}."TB_NEW_UNIQUE_STUD_CNT" ;;
  }

  dimension: tb_renewal_rate {
    type: number
    sql: ${TABLE}."TB_RENEWAL_RATE" ;;
  }

  dimension: tb_renewal_unique_stud_cnt {
    type: number
    sql: ${TABLE}."TB_RENEWAL_UNIQUE_STUD_CNT" ;;
  }

  dimension: tb_unique_stud_cnt {
    type: number
    sql: ${TABLE}."TB_UNIQUE_STUD_CNT" ;;
  }
  measure: contract_cost_dollars {
    type: sum
    sql: ${TABLE}."CONTRACT_COST_DOLLARS" ;;
  }

  measure: lcl_currency_dollars {
    type: sum
    sql: ${TABLE}."LCL_CURRENCY_DOLLARS" ;;
  }



  measure: count {
    type: count
    drill_fields: []
  }
}


view: total_by_product_class {
  derived_table: {

    sql: SELECT
    pc.product_class_key  product,
        sum(f.contract_cost_dollars) dollars_by_product
      FROM slx_opportunity_lineitem_fact f
      LEFT JOIN product_dim p
       on f.product_key =p.product_key
      left join product_curr_dim pcur
      on pcur.product_curr_key = p.product_curr_key
      left join product_class_dim pc
      on pcur.product_class_key = pc.product_class_key
      GROUP BY 1
       ;;
  }

  dimension: product {
    primary_key: yes
    type: number
    sql: ${TABLE}.product;;
  }


  measure: dollars_by_product {
    type: sum
    sql:   ${TABLE}.dollars_by_product;;

  }



  }
