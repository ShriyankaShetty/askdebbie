connection: "askdebbie"

include: "*.view"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
 explore: edu_sales {
   label: "Edu Sales"
  view_name: slx_opportunity_lineitem_fact

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
 }
