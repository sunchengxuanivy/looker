view: bin_facts_k {
  derived_table: {
    explore_source: tick_history_k {
      column: symbol {field: tick_history_k.symbol}
      column: timestamp {field: tick_history_k.datetime_time }
      column: timestamp_date {field: tick_history_k.datetime_date }
      column: binid {field: tick_history_k.binid }
      column: trade_price { field: tick_history_k.trade_price }
#       column: min_price { field: tick_history_k.min_price }
#       column: max_price { field: tick_history_k.max_price }
#       column: vwap { field: tick_history_k.vwap }
      derived_column: bin_first_price { sql: FIRST_VALUE(trade_price) OVER (PARTITION BY binid ORDER BY timestamp ASC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) ;; }
      derived_column: bin_last_price { sql: LAST_VALUE(trade_price) OVER (PARTITION BY binid ORDER BY timestamp ASC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) ;; }
      derived_column: bin_price_mean { sql: AVG(trade_price) OVER (PARTITION BY binid ORDER BY timestamp ASC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) ;; }
      derived_column: bin_price_stddev { sql: STDDEV(trade_price) OVER (PARTITION BY binid ORDER BY timestamp ASC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) ;; }
      derived_column: price_stddev_day { sql: STDDEV(trade_price) OVER (PARTITION BY timestamp_date ORDER BY timestamp ASC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) ;; }
      derived_column: price_stddev_fullrange { sql: STDDEV(trade_price) OVER (ORDER BY timestamp ASC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) ;; }
      bind_all_filters: yes
    }
#     datagroup_trigger: kutay_fsi_cm1_default_datagroup
  }

  dimension: primary_key {
    hidden: yes
    primary_key: yes
    sql: CONCAT(${TABLE}.symbol, ${TABLE}.timestamp) ;;
  }

  dimension: symbol {
    hidden:  yes
    label: "Symbol"
    type: string
    sql: ${TABLE}.symbol ;;
  }

  dimension_group: timestamp {
    hidden: yes
    datatype: datetime
    type: time
    sql: ${TABLE}.timestamp ;;
    timeframes: [raw, date, time]
  }

  dimension_group: timestamp_date {
    datatype: date
    hidden: yes
    type: time
    sql: ${TABLE}.timestamp_date ;;
    timeframes: [raw, date, time]
  }

  dimension: binid {
    hidden: yes
    sql: ${TABLE}.binid ;;
  }

  dimension: trade_price {
    hidden: yes
    type: number
    sql:  ${TABLE}.trade_price ;;
  }

  dimension: bin_first_price {
    hidden: yes
    type: number
    sql:  ${TABLE}.bin_first_price ;;
  }

  dimension: bin_last_price {
    hidden: yes
    type: number
    sql:  ${TABLE}.bin_last_price ;;
  }

  dimension: bin_price_stddev {
    hidden: yes
    type: number
    sql:  ${TABLE}.bin_price_stddev ;;
#     value_format: "#.00;(#.00)"
  }

  dimension: bin_price_mean {
    hidden: yes
    type: number
    sql:  ${TABLE}.bin_price_mean ;;
  }

  dimension: price_stddev_day{
#     hidden: yes
  type: number
  sql:  ${TABLE}.price_stddev_day ;;
  value_format: "#.00;(#.00)"
}

dimension: price_stddev_fullrange{
#     hidden: yes
type: number
sql:  ${TABLE}.price_stddev_fullrange ;;
value_format: "#.00;(#.00)"
}

measure: bin_avg_price {
  view_label: "Tick History K"
  group_label: "Bin Aggregations"
  description: "Use with the Bin Granularity Picker filter-only field"
  label: "Bin Average Price"
  type: average
  sql:  ${trade_price} ;;
}

measure: bin_open_price {
  view_label: "Tick History K"
  group_label: "Bin Aggregations"
  description: "Use with the Bin Granularity Picker filter-only field"
  label: "Bin Open"
  type: min # same for all within the bin; hence a "placeholder aggregation"
  sql:  ${bin_first_price} ;;
}

measure: bin_close_price {
  view_label: "Tick History K"
  group_label: "Bin Aggregations"
  description: "Use with the Bin Granularity Picker filter-only field"
  label: "Bin Close"
  type: max # same for all within the bin; hence a "placeholder aggregation"
  sql:  ${bin_last_price} ;;
}


measure: max_bin_price_stddev {
  view_label: "Tick History K"
  group_label: "Bin Aggregations"
  description: "Use with the Bin Granularity Picker filter-only field"
  label: "Bin Price StdDev"
  type: max # same for all within the bin; hence a "placeholder aggregation"
  sql:  ${bin_price_stddev} ;;
  value_format_name: decimal_2
}

measure: max_bin_price_mean{
  view_label: "Tick History K"
  group_label: "Bin Aggregations"
  description: "Use with the Bin Granularity Picker filter-only field"
  label: "Bin Price Mean"
  type: max # same for all within the bin; hence a "placeholder aggregation"
  sql:  ${bin_price_mean} ;;
  value_format_name: decimal_2
}


measure: bin_close_price_stddev_distance {
  view_label: "Tick History K"
  group_label: "Bin Aggregations"
  description: "Use with the Bin Granularity Picker filter-only field"
  label: "Bin Close StdDev Distance"
  type: min # ??? To find out how many StdDev the Bin Closing Price is away from the mean... [WiP]
  sql:  CASE WHEN ${trade_price} = ${bin_last_price} THEN (${bin_last_price} - ${bin_price_mean}) / NULLIF(${bin_price_stddev}, 0) ELSE NULL END ;;
#     sql:  CASE  WHEN ${trade_price} = ${bin_last_price} AND ABS((${bin_last_price} - ${bin_price_mean}) / NULLIF(${bin_price_stddev}, 0)) >=1
#                   THEN (${bin_last_price} - ${bin_price_mean}) / NULLIF(${bin_price_stddev}, 0)
#                 ELSE NULL
#           END ;;
  value_format_name: decimal_2
}

measure: max_price_stddev_day {
  view_label: "Tick History K"
  label: "\"Trading Day\" Price StdDev"
  type: max # same for all within the day; hence a "placeholder aggregation"
  sql:  ${price_stddev_day} ;;
  value_format_name: decimal_2
}

measure: max_price_stddev_fullrange {
  view_label: "Tick History K"
  label: "\"Full Range\" Price StdDev"
  type: max # same for all within the range; hence a "placeholder aggregation"
  sql:  ${price_stddev_fullrange} ;;
  value_format_name: decimal_2
}

}
