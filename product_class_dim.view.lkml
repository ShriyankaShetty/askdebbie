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
    primary_key: yes
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

  ##testing parameters
  measure: prod_cls_count {
    type: sum
    sql:
    CASE
      WHEN ${product_class_desc} = {% parameter prd_cls_to_count %}
      THEN 1
      ELSE 0
    END
  ;;
  }

  filter: prd_cls_to_count {
    type: string

  }
}
