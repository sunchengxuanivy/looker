# The name of this view in Looker is "Securities Market Odd Lot Order Raw"
view: securities_market_odd_lot_order_raw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `HKEx_demo_securities_market.securities_market_odd_lot_order_raw` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Broker ID" in Explore.

  dimension: broker_id {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.BrokerID ;;
  }

  dimension: msg_type {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.MsgType ;;
  }

  dimension: order_id {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.OrderId ;;
  }

  dimension: price {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.Price ;;
  }

  dimension: quantity {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.Quantity ;;
  }

  dimension: security_code {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.SecurityCode ;;
  }

  dimension: send_time_convertfrom_utcto_hkt {
    type: string
    description: "YYYYMMDD HHMMSSTTT"
    sql: ${TABLE}.SendTimeConvertfromUTCtoHKT ;;
  }

  dimension: side {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.Side ;;
  }
  measure: count {
    type: count
  }
}
