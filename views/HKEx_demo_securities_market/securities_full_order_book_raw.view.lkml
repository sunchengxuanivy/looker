# The name of this view in Looker is "Securities Full Order Book Raw"
view: securities_full_order_book_raw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `HKEx_demo_securities_market.securities_full_order_book_raw` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aggregate Quantity" in Explore.

  dimension: aggregate_quantity {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.AggregateQuantity ;;
  }

  dimension: cooling_off_end_time {
    type: string
    description: "YYYYMMDD HHMMSSTTT"
    sql: ${TABLE}.CoolingOffEndTime ;;
  }

  dimension: lower_price {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.LowerPrice ;;
  }

  dimension: msg_type {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.MsgType ;;
  }

  dimension: order_book_position {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.OrderBookPosition ;;
  }

  dimension: order_id {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.OrderId ;;
  }

  dimension: order_imbalance_direction {
    type: string
    description: "X(1)"
    sql: ${TABLE}.OrderImbalanceDirection ;;
  }

  dimension: order_imbalance_quantity {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.OrderImbalanceQuantity ;;
  }

  dimension: order_type {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.OrderType ;;
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

  dimension: reference_price {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.ReferencePrice ;;
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

  dimension: suspension_indicator {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.SuspensionIndicator ;;
  }

  dimension: trad_cooling_off_start_timee_time {
    type: string
    description: "YYYYMMDD HHMMSSTTT"
    sql: ${TABLE}.TradCoolingOffStartTimeeTime ;;
  }

  dimension: trade_id {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.TradeID ;;
  }

  dimension: trade_time {
    type: string
    description: "YYYYMMDD HHMMSSTTT"
    sql: ${TABLE}.TradeTime ;;
  }

  dimension: trd_type {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.TrdType ;;
  }

  dimension: upper_price {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.UpperPrice ;;
  }

  dimension: vcmlower_price {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.VCMLowerPrice ;;
  }

  dimension: vcmreference_price {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.VCMReferencePrice ;;
  }

  dimension: vcmupper_price {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.VCMUpperPrice ;;
  }
  measure: count {
    type: count
  }
}
