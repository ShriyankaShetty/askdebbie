view: slx_opportunity_dim {
  sql_table_name: DISCED.SLX_OPPORTUNITY_DIM ;;

  dimension: accountable_user_key {
    type: number
    sql: ${TABLE}."ACCOUNTABLE_USER_KEY" ;;
  }

  dimension: acct_svcs_contact_key {
    type: number
    sql: ${TABLE}."ACCT_SVCS_CONTACT_KEY" ;;
  }

  dimension: acct_svcs_rep_key {
    type: number
    sql: ${TABLE}."ACCT_SVCS_REP_KEY" ;;
  }

  dimension: billing_entity_key {
    type: number
    sql: ${TABLE}."BILLING_ENTITY_KEY" ;;
  }

  dimension_group: business_won {
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
    sql: ${TABLE}."BUSINESS_WON_DATE" ;;
  }

  measure: contract_cost_dollars {
    type: sum
    sql: ${TABLE}."CONTRACT_COST_DOLLARS" ;;
  }

  dimension_group: contract_end {
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
    sql: ${TABLE}."CONTRACT_END_DATE" ;;
  }

  dimension_group: contract_start {
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
    sql: ${TABLE}."CONTRACT_START_DATE" ;;
  }

  dimension: deal_type_key {
    type: number
    sql: ${TABLE}."DEAL_TYPE_KEY" ;;
  }

  dimension: effective_year_term {
    type: number
    sql: ${TABLE}."EFFECTIVE_YEAR_TERM" ;;
  }

  dimension: flipkicker_flg {
    type: number
    sql: ${TABLE}."FLIPKICKER_FLG" ;;
  }

  dimension: lcl_currency_dollars {
    type: number
    sql: ${TABLE}."LCL_CURRENCY_DOLLARS" ;;
  }

  dimension: master_proposal_id {
    type: string
    sql: ${TABLE}."MASTER_PROPOSAL_ID" ;;
  }

  dimension: modified_billing_entity_key {
    type: number
    sql: ${TABLE}."MODIFIED_BILLING_ENTITY_KEY" ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}."NOTES" ;;
  }

  dimension_group: opportunity_actual_close {
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
    sql: ${TABLE}."OPPORTUNITY_ACTUAL_CLOSE_DATE" ;;
  }

  dimension: opportunity_author_key {
    type: number
    sql: ${TABLE}."OPPORTUNITY_AUTHOR_KEY" ;;
  }

  dimension_group: opportunity_creation {
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
    sql: ${TABLE}."OPPORTUNITY_CREATION_DATE" ;;
  }

  dimension: opportunity_days_open_cnt {
    type: number
    sql: ${TABLE}."OPPORTUNITY_DAYS_OPEN_CNT" ;;
  }

  dimension: opportunity_desc {
    type: string
    sql: ${TABLE}."OPPORTUNITY_DESC" ;;
  }

  dimension_group: opportunity_estmtd_close {
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
    sql: ${TABLE}."OPPORTUNITY_ESTMTD_CLOSE_DATE" ;;
  }

  dimension: opportunity_id {
    type: string
    sql: ${TABLE}."OPPORTUNITY_ID" ;;
  }

  dimension: opportunity_key {
    type: number
    sql: ${TABLE}."OPPORTUNITY_KEY" ;;
  }

  dimension: opportunity_lost_reason {
    type: string
    sql: ${TABLE}."OPPORTUNITY_LOST_REASON" ;;
  }

  dimension: opportunity_owner_key {
    type: number
    sql: ${TABLE}."OPPORTUNITY_OWNER_KEY" ;;
  }

  dimension: opportunity_scope_desc {
    type: string
    sql: ${TABLE}."OPPORTUNITY_SCOPE_DESC" ;;
  }

  dimension_group: order {
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
    sql: ${TABLE}."ORDER_DATE" ;;
  }

  dimension_group: phase_change {
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
    sql: ${TABLE}."PHASE_CHANGE_DATE" ;;
  }

  dimension: primary_account_key {
    type: number
    sql: ${TABLE}."PRIMARY_ACCOUNT_KEY" ;;
  }

  dimension: renewal_baseline_ind {
    type: number
    sql: ${TABLE}."RENEWAL_BASELINE_IND" ;;
  }

  dimension: renewal_year_key {
    type: number
    sql: ${TABLE}."RENEWAL_YEAR_KEY" ;;
  }

  dimension: sales_contact_key {
    type: number
    sql: ${TABLE}."SALES_CONTACT_KEY" ;;
  }

  dimension: sales_rep_key {
    type: number
    sql: ${TABLE}."SALES_REP_KEY" ;;
  }

  dimension: sap_master_contract_id {
    type: number
    sql: ${TABLE}."SAP_MASTER_CONTRACT_ID" ;;
  }

  dimension: sf_opp_id {
    type: string
    sql: ${TABLE}."SF_OPP_ID" ;;
  }

  dimension: sf_proposal_id {
    type: string
    sql: ${TABLE}."SF_PROPOSAL_ID" ;;
  }

  dimension: slx_opportunity_status_key {
    type: number
    sql: ${TABLE}."SLX_OPPORTUNITY_STATUS_KEY" ;;
  }

  dimension: slx_opportunity_substatus_key {
    type: number
    sql: ${TABLE}."SLX_OPPORTUNITY_SUBSTATUS_KEY" ;;
  }

  dimension: up_account_key {
    type: number
    sql: ${TABLE}."UP_ACCOUNT_KEY" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
