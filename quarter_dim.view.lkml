view: quarter_dim {
  sql_table_name: DISCED.QUARTER_DIM ;;

  dimension_group: eff_quarter_end {
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
    sql: ${TABLE}."EFF_QUARTER_END_DATE" ;;
  }

  dimension_group: eff_quarter_start {
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
    sql: ${TABLE}."EFF_QUARTER_START_DATE" ;;
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

  dimension: last_year_quarter_key {
    type: number
    sql: ${TABLE}."LAST_YEAR_QUARTER_KEY" ;;
  }

  dimension: previous_quarter_key {
    type: number
    sql: ${TABLE}."PREVIOUS_QUARTER_KEY" ;;
  }

  dimension: quarter_desc {
    type: string
    sql: ${TABLE}."QUARTER_DESC" ;;
  }

  dimension: quarter_duration_num {
    type: number
    sql: ${TABLE}."QUARTER_DURATION_NUM" ;;
  }

  dimension_group: quarter_end {
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
    sql: ${TABLE}."QUARTER_END_DATE" ;;
  }

  dimension: quarter_key {
    type: number
    sql: ${TABLE}."QUARTER_KEY" ;;
  }

  dimension_group: quarter_start {
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
    sql: ${TABLE}."QUARTER_START_DATE" ;;
  }

  dimension_group: renewal_quarter_end {
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
    sql: ${TABLE}."RENEWAL_QUARTER_END_DATE" ;;
  }

  dimension_group: renewal_quarter_start {
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
    sql: ${TABLE}."RENEWAL_QUARTER_START_DATE" ;;
  }

  dimension: year_key {
    type: number
    sql: ${TABLE}."YEAR_KEY" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
