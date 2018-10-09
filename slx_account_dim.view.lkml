view: slx_account_dim {
  sql_table_name: DISCED.SLX_ACCOUNT_DIM ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: account_key {
    type: number
    sql: ${TABLE}."ACCOUNT_KEY" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: account_sales_team {
    type: string
    sql: ${TABLE}."ACCOUNT_SALES_TEAM" ;;
  }

  dimension: account_status {
    type: string
    sql: ${TABLE}."ACCOUNT_STATUS" ;;
  }

  dimension: bodypolitic_key {
    type: number
    sql: ${TABLE}."BODYPOLITIC_KEY" ;;
  }

  dimension: contrived_mdr_pid {
    type: string
    sql: ${TABLE}."CONTRIVED_MDR_PID" ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}."COUNTY_NAME" ;;
  }

  dimension: createdate {
    type: string
    sql: ${TABLE}."CREATEDATE" ;;
  }

  dimension: customer_status_reason {
    type: string
    sql: ${TABLE}."CUSTOMER_STATUS_REASON" ;;
  }

  dimension: deleted_ind {
    type: number
    sql: ${TABLE}."DELETED_IND" ;;
  }

  dimension: district_account_id {
    type: string
    sql: ${TABLE}."DISTRICT_ACCOUNT_ID" ;;
  }

  dimension: district_account_name {
    type: string
    sql: ${TABLE}."DISTRICT_ACCOUNT_NAME" ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}."DIVISION" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: enrollment {
    type: string
    sql: ${TABLE}."ENROLLMENT" ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}."FAX" ;;
  }

  dimension: high_grade {
    type: string
    sql: ${TABLE}."HIGH_GRADE" ;;
  }

  dimension: hld_be_bodypolitic_key {
    type: number
    sql: ${TABLE}."HLD_BE_BODYPOLITIC_KEY" ;;
  }

  dimension: hld_be_id {
    type: string
    sql: ${TABLE}."HLD_BE_ID" ;;
  }

  dimension: hld_be_name {
    type: string
    sql: ${TABLE}."HLD_BE_NAME" ;;
  }

  dimension: hld_bodypolitic_key {
    type: number
    sql: ${TABLE}."HLD_BODYPOLITIC_KEY" ;;
  }

  dimension: hld_id {
    type: string
    sql: ${TABLE}."HLD_ID" ;;
  }

  dimension: hld_name {
    type: string
    sql: ${TABLE}."HLD_NAME" ;;
  }

  dimension: is_account_key {
    type: number
    sql: ${TABLE}."IS_ACCOUNT_KEY" ;;
  }

  dimension: is_ind {
    type: string
    sql: ${TABLE}."IS_IND" ;;
  }

  dimension: ismailing {
    type: string
    sql: ${TABLE}."ISMAILING" ;;
  }

  dimension: isprimary {
    type: string
    sql: ${TABLE}."ISPRIMARY" ;;
  }

  dimension: low_grade {
    type: string
    sql: ${TABLE}."LOW_GRADE" ;;
  }

  dimension: mail_bodypolitic_desc {
    type: string
    sql: ${TABLE}."MAIL_BODYPOLITIC_DESC" ;;
  }

  dimension: mail_city_name {
    type: string
    sql: ${TABLE}."MAIL_CITY_NAME" ;;
  }

  dimension: mail_country_name {
    type: string
    sql: ${TABLE}."MAIL_COUNTRY_NAME" ;;
  }

  dimension: mail_line1_address {
    type: string
    sql: ${TABLE}."MAIL_LINE1_ADDRESS" ;;
  }

  dimension: mail_line2_address {
    type: string
    sql: ${TABLE}."MAIL_LINE2_ADDRESS" ;;
  }

  dimension: mail_postal_code {
    type: string
    sql: ${TABLE}."MAIL_POSTAL_CODE" ;;
  }

  dimension: mainphone {
    type: string
    sql: ${TABLE}."MAINPHONE" ;;
  }

  dimension: mdm_id {
    type: string
    sql: ${TABLE}."MDM_ID" ;;
  }

  dimension: mdr_pid_validity_code {
    type: string
    sql: ${TABLE}."MDR_PID_VALIDITY_CODE" ;;
  }

  dimension: ml_bodypolitic_desc {
    type: string
    sql: ${TABLE}."ML_BODYPOLITIC_DESC" ;;
  }

  dimension: ml_city_name {
    type: string
    sql: ${TABLE}."ML_CITY_NAME" ;;
  }

  dimension: ml_country_name {
    type: string
    sql: ${TABLE}."ML_COUNTRY_NAME" ;;
  }

  dimension: ml_county_name {
    type: string
    sql: ${TABLE}."ML_COUNTY_NAME" ;;
  }

  dimension: ml_ismailing {
    type: string
    sql: ${TABLE}."ML_ISMAILING" ;;
  }

  dimension: ml_isprimary {
    type: string
    sql: ${TABLE}."ML_ISPRIMARY" ;;
  }

  dimension: ml_line1_address {
    type: string
    sql: ${TABLE}."ML_LINE1_ADDRESS" ;;
  }

  dimension: ml_line2_address {
    type: string
    sql: ${TABLE}."ML_LINE2_ADDRESS" ;;
  }

  dimension: ml_postal_code {
    type: string
    sql: ${TABLE}."ML_POSTAL_CODE" ;;
  }

  dimension: modifydate {
    type: string
    sql: ${TABLE}."MODIFYDATE" ;;
  }

  dimension: parent_account_id {
    type: string
    sql: ${TABLE}."PARENT_ACCOUNT_ID" ;;
  }

  dimension: ph_bodypolitic_desc {
    type: string
    sql: ${TABLE}."PH_BODYPOLITIC_DESC" ;;
  }

  dimension: ph_city_name {
    type: string
    sql: ${TABLE}."PH_CITY_NAME" ;;
  }

  dimension: ph_country_name {
    type: string
    sql: ${TABLE}."PH_COUNTRY_NAME" ;;
  }

  dimension: ph_county_name {
    type: string
    sql: ${TABLE}."PH_COUNTY_NAME" ;;
  }

  dimension: ph_ismailing {
    type: string
    sql: ${TABLE}."PH_ISMAILING" ;;
  }

  dimension: ph_isprimary {
    type: string
    sql: ${TABLE}."PH_ISPRIMARY" ;;
  }

  dimension: ph_line1_address {
    type: string
    sql: ${TABLE}."PH_LINE1_ADDRESS" ;;
  }

  dimension: ph_line2_address {
    type: string
    sql: ${TABLE}."PH_LINE2_ADDRESS" ;;
  }

  dimension: ph_postal_code {
    type: string
    sql: ${TABLE}."PH_POSTAL_CODE" ;;
  }

  dimension: regctr_account_id {
    type: string
    sql: ${TABLE}."REGCTR_ACCOUNT_ID" ;;
  }

  dimension: regctr_account_name {
    type: string
    sql: ${TABLE}."REGCTR_ACCOUNT_NAME" ;;
  }

  dimension: sf_account_id {
    type: string
    sql: ${TABLE}."SF_ACCOUNT_ID" ;;
  }

  dimension: slx_account_type_key {
    type: number
    sql: ${TABLE}."SLX_ACCOUNT_TYPE_KEY" ;;
  }

  dimension: slx_mdr_pid {
    type: string
    sql: ${TABLE}."SLX_MDR_PID" ;;
  }

  dimension: subtype {
    type: string
    sql: ${TABLE}."SUBTYPE" ;;
  }

  dimension: tollfree {
    type: string
    sql: ${TABLE}."TOLLFREE" ;;
  }

  dimension: up_account_key {
    type: number
    sql: ${TABLE}."UP_ACCOUNT_KEY" ;;
  }

  dimension: up_ind {
    type: string
    sql: ${TABLE}."UP_IND" ;;
  }

  dimension: user_key {
    type: number
    sql: ${TABLE}."USER_KEY" ;;
  }

  dimension: webaddress {
    type: string
    sql: ${TABLE}."WEBADDRESS" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      account_name,
      district_account_name,
      regctr_account_name,
      mail_city_name,
      mail_country_name,
      county_name,
      ml_city_name,
      ml_country_name,
      ml_county_name,
      ph_city_name,
      ph_country_name,
      ph_county_name,
      hld_name,
      hld_be_name
    ]
  }
}
