view: year_dim {
  sql_table_name: DISCED.YEAR_DIM ;;

  dimension_group: eff_year_end {
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
    sql: ${TABLE}."EFF_YEAR_END_DATE" ;;
  }

  dimension_group: eff_year_start {
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
    sql: ${TABLE}."EFF_YEAR_START_DATE" ;;
  }

  dimension_group: fin_eff_year_end {
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
    sql: ${TABLE}."FIN_EFF_YEAR_END_DATE" ;;
  }

  dimension_group: fin_eff_year_start {
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
    sql: ${TABLE}."FIN_EFF_YEAR_START_DATE" ;;
  }

  dimension_group: jitterbit_last_load {
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
    sql: ${TABLE}."JITTERBIT_LAST_LOAD_DATE" ;;
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

  dimension: previous_year_key {
    type: number
    sql: ${TABLE}."PREVIOUS_YEAR_KEY" ;;
  }

  dimension_group: renewal_year_end {
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
    sql: ${TABLE}."RENEWAL_YEAR_END_DATE" ;;
  }

  dimension_group: renewal_year_start {
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
    sql: ${TABLE}."RENEWAL_YEAR_START_DATE" ;;
  }

  dimension: year_duration_num {
    type: number
    sql: ${TABLE}."YEAR_DURATION_NUM" ;;
  }

  dimension_group: year_end {
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
    sql: ${TABLE}."YEAR_END_DATE" ;;
  }

  dimension: year_key {
    type: number
    sql: ${TABLE}."YEAR_KEY" ;;
  }

  dimension_group: year_start {
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
    sql: ${TABLE}."YEAR_START_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
