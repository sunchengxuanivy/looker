include: "hkex_securities_trades.view"
view: tick_history_k {
  extends: [hkex_securities_trades]

  dimension: exchange {
    type: string
    sql: ${TABLE}.isin ;;
  }

  dimension: symbol {
    type: string
    sql: ${TABLE}.short_name ;;
  }


  dimension_group: timestamp {
    datatype: datetime
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
    sql: ${TABLE}.datetime ;;
  }

  dimension: trade_price {
    type: number
    sql: ${TABLE}.price ;;
  }

  measure: max_price {
    # hidden:  yes
    type: max
    sql:  ${trade_price} ;;
  }

  measure: min_price {
    type: min
    sql: ${trade_price} ;;
    value_format_name: usd
  }

  measure: avg_price {
    type: average
    sql: ${trade_price} ;;
    value_format_name: usd
  }

  dimension: volume {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  measure: total_volume {
    type: sum
    sql: ${volume} ;;
    value_format_name: decimal_0
  }

  measure: avg_volume {
    hidden:  yes
    type: average
    sql:  ${volume} ;;
  }

  measure: vol_price {
    hidden:  yes
    type: sum
    sql:  ${volume}*${trade_price} ;;
  }

  measure: vwap {
    hidden:  yes
    label: "VWAP"
    type: number
    sql:  SAFE_DIVIDE(${vol_price},${total_volume}) ;;
    value_format_name: decimal_3
  }

  measure: count {
    hidden:  yes
    type: count
    drill_fields: []
  }

# K! >
  dimension_group: binid5s {
    hidden:  yes
    type: time
    sql: DATETIME_ADD({% date_start datetime_time %}, INTERVAL CAST((FLOOR((TIMESTAMP_DIFF(${TABLE}.datetime, {% date_start datetime_time %}, SECOND))/5)*5) as INT64) SECOND ) ;;
    timeframes: [raw, date, time]
  }

  dimension_group: binid30s {
    hidden:  yes
    type: time
    sql: DATETIME_ADD({% date_start datetime_time %}, INTERVAL CAST((FLOOR((TIMESTAMP_DIFF(${TABLE}.datetime, {% date_start datetime_time %}, SECOND))/30)*30) as INT64) SECOND ) ;;
    timeframes: [raw, date, time]
  }

  dimension_group: binid1m {
    hidden:  yes
    type: time
    sql: DATETIME_ADD({% date_start datetime_time %}, INTERVAL CAST((FLOOR((DATETIME_DIFF(${TABLE}.datetime, {% date_start datetime_time %}, MINUTE))/1)*1) as INT64) MINUTE ) ;;
    timeframes: [raw, date, time]
  }

  dimension_group: binid3m {
    hidden:  yes
    type: time
    sql: DATETIME_ADD({% date_start datetime_time %}, INTERVAL CAST((FLOOR((DATETIME_DIFF(${TABLE}.datetime, {% date_start datetime_time %}, MINUTE))/3)*3) as INT64) MINUTE ) ;;
    timeframes: [raw, date, time]
  }
  dimension_group: binid5m {
    hidden:  yes
    type: time
    sql: DATETIME_ADD({% date_start datetime_time %}, INTERVAL CAST((FLOOR((DATETIME_DIFF(${TABLE}.datetime, {% date_start datetime_time %}, MINUTE))/5)*5) as INT64) MINUTE ) ;;
    timeframes: [raw, date, time]
  }
  dimension_group: binid7m {
    hidden:  yes
    type: time
    sql: DATETIME_ADD({% date_start datetime_time %}, INTERVAL CAST((FLOOR((DATETIME_DIFF(${TABLE}.datetime, {% date_start datetime_time %}, MINUTE))/7)*7) as INT64) MINUTE ) ;;
    timeframes: [raw, date, time]
  }

  dimension_group: binid10m {
    hidden:  yes
    type: time
    sql: DATETIME_ADD({% date_start datetime_time %}, INTERVAL CAST((FLOOR((DATETIME_DIFF(${TABLE}.datetime, {% date_start datetime_time %}, MINUTE))/10)*10) as INT64) MINUTE ) ;;
    timeframes: [raw, date, time]
  }

  dimension_group: binid15m {
    hidden:  yes
    type: time
    sql: DATETIME_ADD({% date_start datetime_time %}, INTERVAL CAST((FLOOR((DATETIME_DIFF(${TABLE}.datetime, {% date_start datetime_time %}, MINUTE))/15)*15) as INT64) MINUTE ) ;;
    timeframes: [raw, date, time]
  }

  dimension_group: binid30m {
    hidden:  yes
    type: time
    sql: DATETIME_ADD({% date_start datetime_time %}, INTERVAL CAST((FLOOR((DATETIME_DIFF(${TABLE}.datetime, {% date_start datetime_time %}, MINUTE))/30)*30) as INT64) MINUTE ) ;;
    timeframes: [raw, date, time]
  }

  dimension_group: binid60m {
    hidden:  yes
    type: time
    sql: DATETIME_ADD({% date_start datetime_time %}, INTERVAL CAST((FLOOR((DATETIME_DIFF(${TABLE}.datetime, {% date_start datetime_time %}, MINUTE))/60)*60) as INT64) MINUTE ) ;;
    timeframes: [raw, date, time]
  }

  dimension_group: binid1d {
    hidden:  yes
    type: time
    sql: DATETIME_ADD({% date_start datetime_time %}, INTERVAL CAST((FLOOR((DATETIME_DIFF(${TABLE}.datetime, {% date_start datetime_time %}, MINUTE))/1440)*1440) as INT64) MINUTE ) ;;
    timeframes: [raw, date, time]
  }

  parameter: bin_granularity {
    type: unquoted
    default_value: "binid60m"
    allowed_value: {
      label: "5-second Bins"
      value: "binid5s"
    }
    allowed_value: {
      label: "30-second Bins"
      value: "binid30s"
    }
    allowed_value: {
      label: "1-minute Bins"
      value: "binid1m"
    }
    allowed_value: {
      label: "3-minute Bins"
      value: "binid3m"
    }
    allowed_value: {
      label: "5-minute Bins"
      value: "binid5m"
    }
    allowed_value: {
      label: "7-minute Bins"
      value: "binid7m"
    }
    allowed_value: {
      label: "10-minute Bins"
      value: "binid10m"
    }
    allowed_value: {
      label: "15-minute Bins"
      value: "binid15m"
    }
    allowed_value: {
      label: "30-minute Bins"
      value: "binid30m"
    }
    allowed_value: {
      label: "1-hour Bins"
      value: "binid60m"
    }
    allowed_value: {
      label: "1-day Bins"
      value: "binid1d"
    }
  }

  dimension: binid {
    label: "Bin ID"
    sql:
    {% if bin_granularity._parameter_value == 'binid5s' %}
      ${binid5s_time}
    {% elsif bin_granularity._parameter_value == 'binid30s' %}
      ${binid30s_time}
    {% elsif bin_granularity._parameter_value == 'binid1m' %}
      ${binid1m_time}
    {% elsif bin_granularity._parameter_value == 'binid3m' %}
      ${binid3m_time}
    {% elsif bin_granularity._parameter_value == 'binid5m' %}
      ${binid5m_time}
    {% elsif bin_granularity._parameter_value == 'binid7m' %}
      ${binid7m_time}
    {% elsif bin_granularity._parameter_value == 'binid10m' %}
      ${binid10m_time}
    {% elsif bin_granularity._parameter_value == 'binid15m' %}
      ${binid15m_time}
    {% elsif bin_granularity._parameter_value == 'binid30m' %}
      ${binid30m_time}
    {% elsif bin_granularity._parameter_value == 'binid60m' %}
      ${binid60m_time}
    {% elsif bin_granularity._parameter_value == 'binid1d' %}
      -- ${binid1d_date}
      ${binid1d_time}
    {% else %}
      ${binid60m_time}
    {% endif %};;
    html: {{ rendered_value | date: "%m-%d-%H:%M:%S" }} ;;
  }

  dimension_group: binid_part {
    label: "Bin ID Part"
    type: time
    timeframes: [raw, time, hour, day_of_week, hour_of_day]
    sql:
    {% if bin_granularity._parameter_value == 'binid5s' %}
      datetime(${binid5s_time})
    {% elsif bin_granularity._parameter_value == 'binid30s' %}
      datetime(${binid30s_time})
    {% elsif bin_granularity._parameter_value == 'binid1m' %}
      datetime(${binid1m_time})
    {% elsif bin_granularity._parameter_value == 'binid3m' %}
      datetime(${binid3m_time})
    {% elsif bin_granularity._parameter_value == 'binid5m' %}
     datetime( ${binid5m_time})
    {% elsif bin_granularity._parameter_value == 'binid7m' %}
      datetime(${binid7m_time})
    {% elsif bin_granularity._parameter_value == 'binid10m' %}
      datetime(${binid10m_time})
    {% elsif bin_granularity._parameter_value == 'binid15m' %}
      datetime(${binid15m_time})
    {% elsif bin_granularity._parameter_value == 'binid30m' %}
      datetime(${binid30m_time})
    {% elsif bin_granularity._parameter_value == 'binid60m' %}
      datetime(${binid60m_time})
    {% elsif bin_granularity._parameter_value == 'binid1d' %}
      -- ${binid1d_date}
      datetime(${binid1d_time})
    {% else %}
      datetime(${binid60m_time})
    {% endif %};;
#     html: {{ rendered_value | date: "%m-%d-%H:%M:%S" }} ;;
    }

    measure: bin_min_price {
      description: "Use with the Bin Granularity Picker filter-only field"
      group_label: "Bin Aggregations"
      label: "Bin Low"
      type: min
      sql:  ${trade_price} ;;
    }

    measure: bin_max_price {
      description: "Use with the Bin Granularity Picker filter-only field"
      group_label: "Bin Aggregations"
      label: "Bin High"
      type: max
      sql:  ${trade_price} ;;
    }

    measure: bin_total_volume {
      description: "Use with the Bin Granularity Picker filter-only field"
      group_label: "Bin Aggregations"
      label: "Bin Volume"
      type: sum
      sql:  ${volume};;
      value_format: "#,##0.0,,\" M\""
    }

    measure: bin_vwap {
      description: "Use with the Bin Granularity Picker filter-only field"
      group_label: "Bin Aggregations"
      label: "Bin VWAP"
      type: number
      sql:  SAFE_DIVIDE(${vol_price},${total_volume}) ;;
      value_format_name: decimal_3
    }

    measure: bin_count {
      description: "Use with the Bin Granularity Picker filter-only field"
      group_label: "Bin Aggregations"
      label: "Bin Count"
      type: count
      drill_fields: [symbol, binid, datetime_time, trade_price]
    }

    parameter: ema_sfactor {
      label: "EMA Smoothing Factor"
      description: "Use with the EMA/MACD measures"
      type: unquoted
      default_value: "0.5"
      allowed_value: {
        label: ".1"
        value: "0.1"
      }
      allowed_value: {
        label: ".2"
        value: "0.2"
      }
      allowed_value: {
        label: ".3"
        value: "0.3"
      }
      allowed_value: {
        label: ".4"
        value: "0.4"
      }
      allowed_value: {
        label: ".5"
        value: "0.5"
      }
      allowed_value: {
        label: ".6"
        value: "0.6"
      }
      allowed_value: {
        label: ".7"
        value: "0.7"
      }
      allowed_value: {
        label: ".8"
        value: "0.8"
      }
      allowed_value: {
        label: ".9"
        value: "0.9"
      }
    }

    # > K!

  }
