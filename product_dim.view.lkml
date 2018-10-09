view: product_dim {
  sql_table_name: DISCED.PRODUCT_DIM ;;

  dimension: base_uom {
    type: string
    sql: ${TABLE}."BASE_UOM" ;;
  }

  dimension: commissionable_ind {
    type: number
    sql: ${TABLE}."COMMISSIONABLE_IND" ;;
  }

  dimension: creation_ts {
    type: string
    sql: ${TABLE}."CREATION_TS" ;;
  }

  dimension: creator_name {
    type: string
    sql: ${TABLE}."CREATOR_NAME" ;;
  }

  dimension: deleted_ind {
    type: number
    sql: ${TABLE}."DELETED_IND" ;;
  }

  dimension: modified_ts {
    type: string
    sql: ${TABLE}."MODIFIED_TS" ;;
  }

  dimension: modifier_name {
    type: string
    sql: ${TABLE}."MODIFIER_NAME" ;;
  }

  dimension: platform_code {
    type: string
    sql: ${TABLE}."PLATFORM_CODE" ;;
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

  dimension: product_family_desc {
    type: string
    sql: ${TABLE}."PRODUCT_FAMILY_DESC" ;;
  }

  dimension: product_group_desc {
    type: string
    sql: ${TABLE}."PRODUCT_GROUP_DESC" ;;
  }

  dimension: product_key {
    type: number
    sql: ${TABLE}."PRODUCT_KEY" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."PRODUCT_NAME" ;;
  }

  dimension: product_nonplan_ind {
    type: number
    sql: ${TABLE}."PRODUCT_NONPLAN_IND" ;;
  }

  dimension: product_price_dollars {
    type: number
    sql: ${TABLE}."PRODUCT_PRICE_DOLLARS" ;;
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

  dimension: status_desc {
    type: string
    sql: ${TABLE}."STATUS_DESC" ;;
  }

  dimension: stockitem_ind {
    type: number
    sql: ${TABLE}."STOCKITEM_IND" ;;
  }

  dimension: subscription_ind {
    type: number
    sql: ${TABLE}."SUBSCRIPTION_IND" ;;
  }

  dimension: taxable_ind {
    type: number
    sql: ${TABLE}."TAXABLE_IND" ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, creator_name, modifier_name]
  }
}
