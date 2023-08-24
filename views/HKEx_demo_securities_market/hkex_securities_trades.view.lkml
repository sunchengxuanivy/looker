# The name of this view in Looker is "Hkex Securities Trades"
view: hkex_securities_trades {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `HKEx_demo_securities_market.HKEX_Securities_Trades` ;;


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

  dimension: msg_type {
    type: number
    sql: ${TABLE}.MsgType ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: security_code {
    type: number
    sql: ${TABLE}.SecurityCode ;;
  }

  dimension: short_name {
    type: string
    sql: ${TABLE}.short_name ;;
  }

  dimension: trade_id {
    type: number
    sql: ${TABLE}.TradeID ;;
  }

  dimension: bin_first_price {
    hidden: yes
    type: number
    sql:  ${TABLE}.bin_first_price ;;
  }

  measure: count {
    type: count
    drill_fields: [short_name]
  }
}
