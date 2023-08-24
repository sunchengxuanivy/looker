# Define the database connection to be used for this model.
connection: "hkex"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: hkex_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: hkex_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Hkex"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: hkex_securities_trades {}

explore: reference_price {}

explore: securities_full_order_book_raw {}

explore: hkex_securities_orders {}

explore: trading_session_status_raw {}

explore: securities_reference_raw {}

explore: securities_market_odd_lot_order_raw {}

explore: etf_raw {}

explore: other_raw {}

explore: equity_linked_instruments_raw {}

explore: leveraged_and_inverse_products_raw {}

explore: chinese_name_raw {}

explore: equity_securities_raw {}

explore: debt_securities_raw {}

explore: cbbc_raw {}

explore: registrar_raw {}

explore: real_estate_investment_trusts_raw {}

explore: warrants_raw {}

explore: tick_history_k {
  label: "Tick History"
  always_filter: {
    filters: [
      datetime_time: "2022-01-01 09:00:00 to 2022-12-31 16:00:00",
    ]
  }

  join: bin_facts_k {
    sql_on: ${bin_facts_k.symbol} = ${tick_history_k.symbol}
      AND ${bin_facts_k.timestamp_time} = ${tick_history_k.timestamp_time} ;;
    relationship: many_to_one
  }
}
