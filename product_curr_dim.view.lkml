view: product_curr_dim {
  sql_table_name: DISCED.PRODUCT_CURR_DIM ;;

  dimension: base_uom {
    type: string
    sql: ${TABLE}."BASE_UOM" ;;
  }

  dimension_group: creation_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."CREATION_TS" ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}."CURRENCY_CODE" ;;
  }

  dimension: fin_product_class_key {
    type: number
    sql: ${TABLE}."FIN_PRODUCT_CLASS_KEY" ;;
  }

  dimension: international_flag {
    type: number
    sql: ${TABLE}."INTERNATIONAL_FLAG" ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}."IS_ACTIVE" ;;
  }

  dimension: orig_product_category {
    type: string
    sql: ${TABLE}."ORIG_PRODUCT_CATEGORY" ;;
  }

  dimension: platform_code {
    type: number
    sql: ${TABLE}."PLATFORM_CODE" ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}."PRODUCT_CATEGORY" ;;
  }

  dimension: product_class_goal_key {
    type: number
    sql: ${TABLE}."PRODUCT_CLASS_GOAL_KEY" ;;
  }

  dimension: product_class_key {
    type: number
    sql: ${TABLE}."PRODUCT_CLASS_KEY" ;;
  }

  dimension: product_curr_key {
    type: number
    sql: ${TABLE}."PRODUCT_CURR_KEY" ;;
  }

  dimension: product_curr_name {
    type: string
    sql: ${TABLE}."PRODUCT_CURR_NAME" ;;
  }

  dimension: product_family_desc {
    type: string
    sql: ${TABLE}."PRODUCT_FAMILY_DESC" ;;
  }

  dimension: product_group_desc {
    type: string
    sql: ${TABLE}."PRODUCT_GROUP_DESC" ;;
  }

  dimension: product_line_key {
    type: number
    sql: ${TABLE}."PRODUCT_LINE_KEY" ;;
  }

  dimension: product_nonplan_ind {
    type: string
    sql: ${TABLE}."PRODUCT_NONPLAN_IND" ;;
  }

  dimension: product_price_dollars {
    type: number
    sql: ${TABLE}."PRODUCT_PRICE_DOLLARS" ;;
  }

  dimension: product_pricing_key {
    type: number
    sql: ${TABLE}."PRODUCT_PRICING_KEY" ;;
  }

  dimension: product_subclass_key {
    type: number
    sql: ${TABLE}."PRODUCT_SUBCLASS_KEY" ;;
  }

  dimension: product_type_desc {
    type: string
    sql: ${TABLE}."PRODUCT_TYPE_DESC" ;;
  }

  dimension: profit_center_id {
    type: number
    sql: ${TABLE}."PROFIT_CENTER_ID" ;;
  }

  dimension: sap_material_id {
    type: number
    sql: ${TABLE}."SAP_MATERIAL_ID" ;;
  }

  dimension: sap_product_line_code {
    type: string
    sql: ${TABLE}."SAP_PRODUCT_LINE_CODE" ;;
  }

  dimension: sap_product_line_desc {
    type: string
    sql: ${TABLE}."SAP_PRODUCT_LINE_DESC" ;;
  }

  dimension: sap_product_type_code {
    type: string
    sql: ${TABLE}."SAP_PRODUCT_TYPE_CODE" ;;
  }

  dimension: sap_product_type_desc {
    type: string
    sql: ${TABLE}."SAP_PRODUCT_TYPE_DESC" ;;
  }

  dimension: slx_product_actual_id {
    type: string
    sql: ${TABLE}."SLX_PRODUCT_ACTUAL_ID" ;;
  }

  dimension: slx_product_id {
    type: string
    sql: ${TABLE}."SLX_PRODUCT_ID" ;;
  }

  dimension: stockitem_ind {
    type: number
    sql: ${TABLE}."STOCKITEM_IND" ;;
  }

  dimension: subscription_ind {
    type: number
    sql: ${TABLE}."SUBSCRIPTION_IND" ;;
  }

  measure: count {
    type: count
    drill_fields: [product_curr_name]
  }
}
