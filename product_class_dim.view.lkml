view: product_class_dim {
  sql_table_name: DISCED.PRODUCT_CLASS_DIM ;;

  dimension: component_key {
    type: number
    sql: ${TABLE}."COMPONENT_KEY" ;;
  }

  dimension: product_class_code {
    type: string
    sql: ${TABLE}."PRODUCT_CLASS_CODE" ;;
  }

  dimension: product_class_desc {
    type: string
    sql: ${TABLE}."PRODUCT_CLASS_DESC" ;;
  }

  dimension: product_class_grouping_key {
    type: number
    sql: ${TABLE}."PRODUCT_CLASS_GROUPING_KEY" ;;
  }

  dimension: product_class_key {
    type: number
    sql: ${TABLE}."PRODUCT_CLASS_KEY" ;;
  }

  dimension: product_class_short_desc {
    type: string
    sql: ${TABLE}."PRODUCT_CLASS_SHORT_DESC" ;;
  }

  dimension: sort_num {
    type: number
    sql: ${TABLE}."SORT_NUM" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
