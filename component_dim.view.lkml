view: component_dim {
  sql_table_name: DISCED.COMPONENT_DIM ;;

  dimension: component_desc {
    type: string
    sql: ${TABLE}."COMPONENT_DESC" ;;
    html:   <p style="color:darkslategray; font-size: 100%">{{ value }}</p>;;
    link: {
      label: "Sales by Component"
      #url: "https://learn.looker.com/looks/249?&f[users.state]={{ _filters['users.state'] | url_encode }}&f[orders.date]={{ _filters['orders.date'] | url_encode }}"
      #url: "https://thirdi.looker.com/dashboards/15?State={{ slx_bodypolitic_dim.bodypolitic_code._filterable_value }}"
      url: "https://thirdi.looker.com/dashboards/17?Component={{ component_dim.component_desc._filterable_value }}"
    }
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
