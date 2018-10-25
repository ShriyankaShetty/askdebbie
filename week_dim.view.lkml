view: week_dim {
  sql_table_name: DISCED.WEEK_DIM ;;

  dimension_group: eff_week_end {
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
    sql: ${TABLE}."EFF_WEEK_END_DATE" ;;
  }

  dimension_group: eff_week_start {
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
    sql: ${TABLE}."EFF_WEEK_START_DATE" ;;
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

  dimension: last_week_key {
    type: number
    sql: ${TABLE}."LAST_WEEK_KEY" ;;
  }

  dimension_group: renewal_week_end {
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
    sql: ${TABLE}."RENEWAL_WEEK_END_DATE" ;;
  }

  dimension_group: renewal_week_start {
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
    sql: ${TABLE}."RENEWAL_WEEK_START_DATE" ;;
  }

  dimension: week_desc {
    type: string
    sql: ${TABLE}."WEEK_DESC" ;;
  }

  dimension_group: week_end {
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
    sql: ${TABLE}."WEEK_END_DATE" ;;
  }

  dimension: week_key {
    type: number
    sql: ${TABLE}."WEEK_KEY" ;;
  }

  dimension_group: week_start {
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
    sql: ${TABLE}."WEEK_START_DATE" ;;
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
