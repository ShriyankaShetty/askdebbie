view: slx_bodypolitic_dim {
  sql_table_name: DISCED.SLX_BODYPOLITIC_DIM ;;

  dimension: bodypolitic_code {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}."BODYPOLITIC_CODE" ;;
  }

  dimension: bodypolitic_key {
    type: number
    sql: ${TABLE}."BODYPOLITIC_KEY" ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}."COUNTRY_NAME" ;;
    drill_fields: [bodypolitic_code]
  }

  measure: count {
    type: count
    drill_fields: [country_name]
  }

  dimension: state_detail {
    sql: ${TABLE}."BODYPOLITIC_CODE";;
    map_layer_name: us_states
    link: {
      label: "Booking details for State"
      url: "https://thirdi.looker.com/looks/18?State={{ _filters['slx_bodypolitic_dim.bodypolitic_code'] | url_encode }}"
    }

  }
}
