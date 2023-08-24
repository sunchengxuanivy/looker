# The name of this view in Looker is "Other Raw"
view: other_raw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `HKEx_demo_securities_attribute.other_raw` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Amt OS" in Explore.

  dimension: amt_os {
    type: number
    description: "Amount outstanding (Indicate the number of other unit trusts/mutual funds outstanding in the market)"
    sql: ${TABLE}.AMT_OS ;;
  }

  dimension: amt_os_cur {
    type: string
    description: "Currency of AMT_OS"
    sql: ${TABLE}.AMT_OS_CUR ;;
  }

  dimension: amt_os_date {
    type: string
    description: "Amount outstanding as at date Format is YYYY/MM/DD"
    sql: ${TABLE}.AMT_OS_DATE ;;
  }

  dimension: amt_os_unit {
    type: string
    description: "Amount outstanding unit indicator ‘U’ – AMT_OS is in units ‘$’ – AMT_OS is in dollars"
    sql: ${TABLE}.AMT_OS_UNIT ;;
  }

  dimension: asset_class {
    type: string
    description: "To indicate the type of asset class. Possible values are : ‘0001’ – Equity ‘0002’ – Fixed Income ‘0003’ – Money Market ‘0004’ – Commodity ‘0005’ – Multi-asset ‘0006’ – Virtual Asset"
    sql: ${TABLE}.ASSET_CLASS ;;
  }

  dimension: board_lot {
    type: number
    description: "Board lot"
    sql: ${TABLE}.BOARD_LOT ;;
  }

  dimension: cas_ind {
    type: string
    description: "To indicate if Closing Auction Session (CAS) is applicable to the security ‘Y’ – CAS applicable ‘N’ – CAS not applicable"
    sql: ${TABLE}.CAS_IND ;;
  }

  dimension: date {
    type: string
    description: "Date of the respective trading day. Format is YYYY/MM/DD where YYYY - year MM - month DD - day"
    sql: ${TABLE}.DATE ;;
  }

  dimension: delist_date {
    type: string
    description: "Delisting date Format is YYYY/MM/DD"
    sql: ${TABLE}.DELIST_DATE ;;
  }

  dimension: dist_pu {
    type: number
    description: "Distribution per unit"
    sql: ${TABLE}.DIST_PU ;;
  }

  dimension: first_date {
    type: string
    description: "First trading date Format is YYYY/MM/DD"
    sql: ${TABLE}.FIRST_DATE ;;
  }

  dimension: full_name {
    type: string
    description: "Full name of stock"
    sql: ${TABLE}.FULL_NAME ;;
  }

  dimension: fund_mgr {
    type: string
    description: "Fund manager"
    sql: ${TABLE}.FUND_MGR ;;
  }

  dimension: isin {
    type: string
    description: "International Securities Identification Number"
    sql: ${TABLE}.ISIN ;;
  }

  dimension: last_date {
    type: string
    description: "Last trading date Format is YYYY/MM/DD"
    sql: ${TABLE}.LAST_DATE ;;
  }

  dimension: launch_date {
    type: string
    description: "Date launched Format is YYYY/MM/DD"
    sql: ${TABLE}.LAUNCH_DATE ;;
  }

  dimension: list_date {
    type: string
    description: "Listing date. Format is YYYY/MM/DD Blank if listing date is not available"
    sql: ${TABLE}.LIST_DATE ;;
  }

  dimension: market {
    type: string
    description: "Market code. Possible values are : ‘M’ – Main Board ‘G’ – GEM"
    sql: ${TABLE}.MARKET ;;
  }

  dimension: orig_pr_cur {
    type: string
    description: "Currency of ORIG_PRICE"
    sql: ${TABLE}.ORIG_PR_CUR ;;
  }

  dimension: orig_price {
    type: number
    description: "Original offer price Value is accurate to 3 decimal places"
    sql: ${TABLE}.ORIG_PRICE ;;
  }

  dimension: pos_ind {
    type: string
    description: "To indicate if Pre-Opening Session (POS) is applicable to the security ‘Y’ – POS applicable ‘N’ – POS not applicable"
    sql: ${TABLE}.POS_IND ;;
  }

  dimension: registrar {
    type: string
    description: "Code of the trust registrar Refer to the registrar file for details"
    sql: ${TABLE}.REGISTRAR ;;
  }

  dimension: se_type {
    type: string
    description: "Code assigned to indicate the type of securities See table in Appendix 2 for valid values"
    sql: ${TABLE}.SE_TYPE ;;
  }

  dimension: short_name {
    type: string
    description: "Short name of stock"
    sql: ${TABLE}.SHORT_NAME ;;
  }

  dimension: ss_ind {
    type: string
    description: "To indicate if a designated stock for short selling ‘Y’ – Designated for short selling ‘N’ – Not designated for short selling"
    sql: ${TABLE}.SS_IND ;;
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

  dimension: susp_date {
    type: string
    description: "The start date of the suspension if SUSP_IND = ‘Y’ Format is YYYY/MM/DD"
    sql: ${TABLE}.SUSP_DATE ;;
  }

  dimension: susp_ind {
    type: string
    description: "To indicate if suspended for trading at the start of the day ‘Y’ – Suspended ‘N’ – Not suspended"
    sql: ${TABLE}.SUSP_IND ;;
  }

  dimension: trad_cur {
    type: string
    description: "Trading currency of stock"
    sql: ${TABLE}.TRAD_CUR ;;
  }

  dimension: vcm_ind {
    type: string
    description: "To indicate if Volatility Control Mechanism (VCM) is applicable to the security ‘Y’ – VCM applicable ‘N’ – VCM not applicable"
    sql: ${TABLE}.VCM_IND ;;
  }

  dimension: vcm_param {
    type: number
    description: "Indicate the +/- Trigger Level and Price Band within Cooling-off period of VCM ‘0’ – VCM not applicable ‘1’ – 10% ‘2’ – 15% ‘3’ – 20% ‘4’ – 25% ‘5’ – 30% ‘6’ – 50% ‘7’ – 5%"
    sql: ${TABLE}.VCM_PARAM ;;
  }

  dimension: yield {
    type: number
    description: "Yield"
    sql: ${TABLE}.YIELD ;;
  }
  measure: count {
    type: count
    drill_fields: [short_name, full_name]
  }
}
