view: month_dim {
  sql_table_name: DISCED.MONTH_DIM ;;

  dimension_group: eff_month_end {
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
    sql: ${TABLE}."EFF_MONTH_END_DATE" ;;
  }

  dimension_group: eff_month_start {
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
    sql: ${TABLE}."EFF_MONTH_START_DATE" ;;
  }

  dimension_group: fin_eff_month_end {
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
    sql: ${TABLE}."FIN_EFF_MONTH_END_DATE" ;;
  }

  dimension_group: fin_eff_month_start {
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
    sql: ${TABLE}."FIN_EFF_MONTH_START_DATE" ;;
  }

  dimension_group: last_load {
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
    sql: ${TABLE}."LAST_LOAD_DATE" ;;
  }

  dimension: last_year_month_key {
    type: number
    sql: ${TABLE}."LAST_YEAR_MONTH_KEY" ;;
  }

  dimension: month_desc {
    type: string
    sql: ${TABLE}."MONTH_DESC" ;;
    html:   <p style="color: white; background-color: gray; font-size:100%; text-align:center">{{ rendered_value }}</p>;;

  }

  dimension: month_duration_num {
    type: number
    sql: ${TABLE}."MONTH_DURATION_NUM" ;;
  }

  dimension_group: month_end {
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
    sql: ${TABLE}."MONTH_END_DATE" ;;
  }

  dimension: month_key {
    type: number
    sql: ${TABLE}."MONTH_KEY" ;;
  }

  dimension: month_of_year {
    type: number
    sql: ${TABLE}."MONTH_OF_YEAR" ;;
  }

  dimension_group: month_start {
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
    sql: ${TABLE}."MONTH_START_DATE" ;;
  }

  dimension: next_month_key {
    type: number
    sql: ${TABLE}."NEXT_MONTH_KEY" ;;
  }

  dimension: previous_month_key {
    type: number
    sql: ${TABLE}."PREVIOUS_MONTH_KEY" ;;
  }

  dimension: previous_quarter_month_key {
    type: number
    sql: ${TABLE}."PREVIOUS_QUARTER_MONTH_KEY" ;;
  }

  dimension: quarter_key {
    type: number
    sql: ${TABLE}."QUARTER_KEY" ;;
  }

  dimension_group: renewal_month_end {
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
    sql: ${TABLE}."RENEWAL_MONTH_END_DATE" ;;
  }

  dimension_group: renewal_month_start {
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
    sql: ${TABLE}."RENEWAL_MONTH_START_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
