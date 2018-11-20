view: templated_filter {
  derived_table: {
    sql:
      SELECT
        customer_id,                        -- Can be made a dimension
        SUM(sale_price) AS lifetime_spend   -- Can be made a dimension
      FROM
        order
     WHERE
        {% condition order_region %} order.region {% endcondition %}
    ;;
  }

  filter: order_region {
    type: string
  }
}
