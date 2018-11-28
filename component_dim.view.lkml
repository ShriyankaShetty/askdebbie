view: component_dim {
  sql_table_name: DISCED.COMPONENT_DIM ;;

  dimension: component_desc {
    type: string
    sql: ${TABLE}."COMPONENT_DESC" ;;
    html:   <p style="color:darkslategray; font-size: 100%">{{ value }}</p>;;
  }

  dimension: component_grp_key {
    type: number
    sql: ${TABLE}."COMPONENT_GRP_KEY" ;;
  }

  dimension: component_key {
    type: number
    sql: ${TABLE}."COMPONENT_KEY" ;;
  }

  dimension: dashboard_comp_desc {
    type: string
    sql: ${TABLE}."DASHBOARD_COMP_DESC" ;;
    html:   <p style="color:darkslategray; font-size: 100%">{{ value }}</p>;;
  }

  dimension: short_desc {
    type: string
    sql: ${TABLE}."SHORT_DESC" ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}."SORT_ORDER" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
