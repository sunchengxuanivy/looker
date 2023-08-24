# The name of this view in Looker is "Chinese Name Raw"
view: chinese_name_raw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `HKEx_demo_securities_attribute.chinese_name_raw` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cfull Name" in Explore.

  dimension: cfull_name {
    type: string
    description: "Full name of stock in Chinese"
    sql: ${TABLE}.CFULL_NAME ;;
  }

  dimension: cshrt_name {
    type: string
    description: "Short name of stock in Chinese"
    sql: ${TABLE}.CSHRT_NAME ;;
  }

  dimension: date {
    type: string
    description: "Date of the respective trading day. Format is YYYY/MM/DD where YYYY - year MM - month DD - day"
    sql: ${TABLE}.DATE ;;
  }

  dimension: stk_id {
    type: string
    description: "Unique identifier assigned to the stock See Appendix 1 for details"
    sql: ${TABLE}.STK_ID ;;
  }

  dimension: stkcode {
    type: string
    description: "Code assigned to the stock. This code is not unique since codes assigned to delisted stocks can be re-used."
    sql: ${TABLE}.STKCODE ;;
  }
  measure: count {
    type: count
    drill_fields: [cshrt_name, cfull_name]
  }
}
