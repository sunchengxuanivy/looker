# The name of this view in Looker is "Reference Price"
view: reference_price {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `HKEx_demo_securities_market.Reference_Price` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: datetime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.datetime ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Isin" in Explore.

  dimension: isin {
    type: string
    sql: ${TABLE}.isin ;;
  }

  dimension: lower_price {
    type: number
    sql: ${TABLE}.LowerPrice ;;
  }

  dimension: msg_type {
    type: number
    sql: ${TABLE}.MsgType ;;
  }

  dimension: reference_price {
    type: number
    sql: ${TABLE}.ReferencePrice ;;
  }

  dimension: security_code {
    type: number
    sql: ${TABLE}.SecurityCode ;;
  }

  dimension: short_name {
    type: string
    sql: ${TABLE}.short_name ;;
  }

  dimension: upper_price {
    type: number
    sql: ${TABLE}.UpperPrice ;;
  }
  measure: count {
    type: count
    drill_fields: [short_name]
  }
}
