connection: "askdebbie"

include: "*.view"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#

datagroup: askdebbie_etl {
  ###Can be set to match your etl process
  sql_trigger: SELECT max(last_load_date) FROM disced.year_dim where year_key=2018 ;;
  #max_cache_age: "24 hours"
}

persist_with: askdebbie_etl

 explore: edu_sales {
   label: "Edu Sales"
  view_name: slx_opportunity_lineitem_fact

  always_filter: {
    filters: {
      field: slx_opportunity_dim.slx_opportunity_status_key
      value :"1,6"
    }
  }


  join: slx_opportunity_dim {
    view_label: "Opportunities"
    relationship: many_to_one
    sql_on: ${slx_opportunity_dim.opportunity_key} = ${slx_opportunity_lineitem_fact.opportunity_key} ;;
  }


   join: product_dim {
     relationship: many_to_one
       sql_on: ${product_dim.product_key} = ${slx_opportunity_lineitem_fact.product_key} ;;

   }

  join: product_curr_dim {
    relationship: many_to_one
    sql_on: ${product_dim.product_curr_key} = ${product_curr_dim.product_curr_key} ;;
  }

  join: product_class_dim {
    relationship: many_to_one
    sql_on: ${product_class_dim.product_class_key} = ${product_curr_dim.product_class_key} ;;
  }

  join: product_line_dim {
    relationship: many_to_one
    sql_on: ${product_line_dim.product_line_key} = ${product_curr_dim.product_line_key} ;;
  }

  join: total_by_product_class {
    view_label: "Opportunities"
    relationship: one_to_one
    sql_on: ${total_by_product_class.product} = ${product_class_dim.product_class_key} ;;
  }



  join: slx_primary_account_dim {
    from: slx_account_dim
    relationship: many_to_one
    sql_on: ${slx_opportunity_dim.primary_account_key} = ${slx_primary_account_dim.account_key} ;;
  }
  join: slx_billing_entity_dim {
    from: slx_account_dim
    relationship: many_to_one
    sql_on: ${slx_opportunity_dim.billing_entity_key} = ${slx_billing_entity_dim.account_key} ;;
  }

  join: slx_bodypolitic_dim {
    relationship: many_to_one
    sql_on: ${slx_billing_entity_dim.bodypolitic_key} = ${slx_billing_entity_dim.bodypolitic_key} ;;
  }
 }

explore: executive_reporting {
  label: "Executive reporting"
  view_name: executive_summary_fact

  join: component_dim {
    relationship: many_to_one
    sql_on: ${component_dim.component_key} = ${executive_summary_fact.component_key} ;;
  }

  join: month_dim {
    relationship: many_to_one
    sql_on: ${executive_summary_fact.month_key} = ${month_dim.month_key} ;;
  }

  join: quarter_dim {
    relationship: many_to_one
    sql_on: ${month_dim.quarter_key} = ${quarter_dim.quarter_key} ;;
  }

  join: year_dim {
    relationship: many_to_one
    sql_on: ${quarter_dim.year_key} = ${year_dim.year_key} ;;
  }
  join: week_dim {
    relationship: many_to_one
    sql_on: ${quarter_dim.year_key} = ${week_dim.year_key} ;;
  }
  join: sls_rep_prodclass_wk_fact{
    relationship: many_to_one
    sql_on: ${week_dim.week_key} = ${sls_rep_prodclass_wk_fact.week_key} ;;
  }
  join: slx_bodypolitic_dim{
    relationship: many_to_one
    sql_on: ${executive_summary_fact.bodypolitic_key} = ${slx_bodypolitic_dim.bodypolitic_key} ;;
  }
  join: sls_territory_dim{
    relationship: many_to_one
    sql_on: ${executive_summary_fact.territory_key} = ${sls_territory_dim.territory_key} ;;
  }
  join: sls_rgn_state_xref{
    relationship: many_to_one
    sql_on: ${sls_rgn_state_xref.bodypolitic_key} = ${executive_summary_fact.bodypolitic_key} and
    ${sls_rgn_state_xref.year_key}=${quarter_dim.year_key};;
  }
  join: product_class_dim {
    relationship: many_to_one
    sql_on: ${product_class_dim.product_class_key} = ${executive_summary_fact.product_class_key} ;;
  }

  join: product_line_dim {
    relationship: many_to_one
    sql_on: ${product_line_dim.product_line_key} =${executive_summary_fact.product_line_key} ;;
  }
  }
