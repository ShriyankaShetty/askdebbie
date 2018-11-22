view: sls_rep_prodclass_wk_fact {
  sql_table_name: DISCED.SLS_REP_PRODCLASS_WK_FACT ;;

  dimension: actl_new_sales {
    type: number
    sql: ${TABLE}."ACTL_NEW_SALES" ;;
  }

  dimension: actl_renewal_sales {
    type: number
    sql: ${TABLE}."ACTL_RENEWAL_SALES" ;;
  }

  dimension: actl_total_sales {
    type: number
    sql: ${TABLE}."ACTL_TOTAL_SALES" ;;
  }

  dimension: annl_new_sales {
    type: number
    sql: ${TABLE}."ANNL_NEW_SALES" ;;
  }

  dimension: annl_renewal_sales {
    type: number
    sql: ${TABLE}."ANNL_RENEWAL_SALES" ;;
  }

  dimension: annl_total_sales {
    type: number
    sql: ${TABLE}."ANNL_TOTAL_SALES" ;;
  }

  dimension: bodypolitic_key {
    type: number
    sql: ${TABLE}."BODYPOLITIC_KEY" ;;
  }

  dimension: fin_actl_new_sales {
    type: string
    sql: ${TABLE}."FIN_ACTL_NEW_SALES" ;;
  }

  dimension: fin_actl_renewal_sales {
    type: string
    sql: ${TABLE}."FIN_ACTL_RENEWAL_SALES" ;;
  }

  dimension: fin_actl_total_sales {
    type: string
    sql: ${TABLE}."FIN_ACTL_TOTAL_SALES" ;;
  }

  dimension: fin_annl_new_sales {
    type: number
    sql: ${TABLE}."FIN_ANNL_NEW_SALES" ;;
  }

  dimension: fin_annl_renewal_sales {
    type: number
    sql: ${TABLE}."FIN_ANNL_RENEWAL_SALES" ;;
  }

  dimension: fin_annl_total_sales {
    type: number
    sql: ${TABLE}."FIN_ANNL_TOTAL_SALES" ;;
  }

  dimension: fin_new_sales {
    type: number
    sql: ${TABLE}."FIN_NEW_SALES" ;;
  }

  dimension: fin_renewal_sales {
    type: number
    sql: ${TABLE}."FIN_RENEWAL_SALES" ;;
  }

  dimension: fin_total_sales {
    type: number
    sql: ${TABLE}."FIN_TOTAL_SALES" ;;
  }

  dimension: fin_ytd_new_sales {
    type: number
    sql: ${TABLE}."FIN_YTD_NEW_SALES" ;;
  }

  dimension: fin_ytd_renewal_sales {
    type: number
    sql: ${TABLE}."FIN_YTD_RENEWAL_SALES" ;;
  }

  dimension: fin_ytd_total_sales {
    type: number
    sql: ${TABLE}."FIN_YTD_TOTAL_SALES" ;;
  }

  dimension: new_business_ind {
    type: number
    sql: ${TABLE}."NEW_BUSINESS_IND" ;;
  }

  dimension: new_sales {
    type: number
    sql: ${TABLE}."NEW_SALES" ;;
  }

  dimension: product_class_key {
    type: number
    sql: ${TABLE}."PRODUCT_CLASS_KEY" ;;
  }

  dimension: renewal_sales {
    type: number
    sql: ${TABLE}."RENEWAL_SALES" ;;
  }

  dimension: sales_rep_key {
    type: number
    sql: ${TABLE}."SALES_REP_KEY" ;;
  }

  dimension: total_sales {
    type: number
    sql: ${TABLE}."TOTAL_SALES" ;;
  }

  dimension: week_key {
    type: number
    sql: ${TABLE}."WEEK_KEY" ;;
  }

  dimension: ytd_new_sales {
    type: number
    sql: ${TABLE}."YTD_NEW_SALES" ;;
  }

  dimension: ytd_renewal_sales {
    type: number
    sql: ${TABLE}."YTD_RENEWAL_SALES" ;;
  }

  dimension: ytd_total_sales {
    type: number
    sql: ${TABLE}."YTD_TOTAL_SALES" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
