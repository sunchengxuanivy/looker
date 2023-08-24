# The name of this view in Looker is "Trading Session Status Raw"
view: trading_session_status_raw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `HKEx_demo_securities_market.trading_session_status_raw` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Date Time" in Explore.

  dimension: end_date_time {
    type: string
    description: "YYYYMMDD HHMMSSTTT"
    sql: ${TABLE}.EndDateTime ;;
  }

  dimension: filler {
    type: string
    sql: ${TABLE}.Filler ;;
  }

  dimension: filler_1 {
    type: string
    sql: ${TABLE}.Filler_1 ;;
  }

  dimension: filler_2 {
    type: string
    sql: ${TABLE}.Filler_2 ;;
  }

  dimension: market_code {
    type: string
    description: "Character Variable length"
    sql: ${TABLE}.MarketCode ;;
  }

  dimension: msg_type {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.MsgType ;;
  }

  dimension: send_time_convertfrom_utcto_hkt {
    type: string
    description: "YYYYMMDD HHMMSSTTT"
    sql: ${TABLE}.SendTimeConvertfromUTCtoHKT ;;
  }

  dimension: start_date_time {
    type: string
    description: "YYYYMMDD HHMMSSTTT"
    sql: ${TABLE}.StartDateTime ;;
  }

  dimension: trading_ses_control_flag {
    type: string
    description: "X(1)"
    sql: ${TABLE}.TradingSesControlFlag ;;
  }

  dimension: trading_ses_status {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.TradingSesStatus ;;
  }

  dimension: trading_session_sub_id {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.TradingSessionSubID ;;
  }
  measure: count {
    type: count
  }
}
