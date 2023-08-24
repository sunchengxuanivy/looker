# The name of this view in Looker is "Equity Linked Instruments Raw"
view: equity_linked_instruments_raw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `HKEx_demo_securities_attribute.equity_linked_instruments_raw` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Amt Issued" in Explore.

  dimension: amt_issued {
    type: number
    description: "Amount issued in units"
    sql: ${TABLE}.AMT_ISSUED ;;
  }

  dimension: amt_os {
    type: number
    description: "Amount outstanding (Indicate the number of ELI outstanding in the market)"
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

  dimension: basket_ind {
    type: string
    description: "To distinguish basket ELI Possible values are : ‘Y’ – basket ELI ‘N’ – not basket ELI"
    sql: ${TABLE}.BASKET_IND ;;
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

  dimension: eli_type {
    type: string
    description: "ELI type. Possible values are: ‘01’ – Bull ‘02’ – Bear ‘03’ – Range"
    sql: ${TABLE}.ELI_TYPE ;;
  }

  dimension: expiry_date {
    type: string
    description: "Expiry date Format is YYYY/MM/DD"
    sql: ${TABLE}.EXPIRY_DATE ;;
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

  dimension: guar_av_int {
    type: string
    description: "Guaranteed average interest in % Applicable to capital protected instruments (CPI) only"
    sql: ${TABLE}.GUAR_AV_INT ;;
  }

  dimension: isin {
    type: string
    description: "International Securities Identification Number"
    sql: ${TABLE}.ISIN ;;
  }

  dimension: iss_pr {
    type: number
    description: "Issue price"
    sql: ${TABLE}.ISS_PR ;;
  }

  dimension: iss_pr_cur {
    type: string
    description: "Currency of ISS_PR"
    sql: ${TABLE}.ISS_PR_CUR ;;
  }

  dimension: istrk_pr_l {
    type: number
    description: "Initial strike price for bull/bear ELI Initial lower strike price for range ELI"
    sql: ${TABLE}.ISTRK_PR_L ;;
  }

  dimension: istrk_pr_u {
    type: number
    description: "Blank for bull/bear ELI Initial upper strike price for range ELI"
    sql: ${TABLE}.ISTRK_PR_U ;;
  }

  dimension: last_date {
    type: string
    description: "Last trading date Format is YYYY/MM/DD"
    sql: ${TABLE}.LAST_DATE ;;
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

  dimension: par {
    type: number
    description: "Par value"
    sql: ${TABLE}.PAR ;;
  }

  dimension: par_bd_lot {
    type: number
    description: "Par value per board lot for ELI"
    sql: ${TABLE}.PAR_BD_LOT ;;
  }

  dimension: par_cur {
    type: string
    description: "Currency of PAR"
    sql: ${TABLE}.PAR_CUR ;;
  }

  dimension: pay_date {
    type: string
    description: "Payment date Format is YYYY/MM/DD"
    sql: ${TABLE}.PAY_DATE ;;
  }

  dimension: pos_ind {
    type: string
    description: "To indicate if Pre-Opening Session (POS) is applicable to the security ‘Y’ – POS applicable ‘N’ – POS not applicable"
    sql: ${TABLE}.POS_IND ;;
  }

  dimension: protection {
    type: string
    description: "Protection Applicable to capital protected instruments (CPI) only"
    sql: ${TABLE}.PROTECTION ;;
  }

  dimension: se_type {
    type: string
    description: "Code assigned to indicate the type of securities See table in Appendix 2 for valid values"
    sql: ${TABLE}.SE_TYPE ;;
  }

  dimension: settle_type {
    type: string
    description: "Settlement type ‘C’ – Cash ‘P’ – Physical"
    sql: ${TABLE}.SETTLE_TYPE ;;
  }

  dimension: shares {
    type: number
    description: "Number of underlying shares at (lower) strike price for ELI"
    sql: ${TABLE}.SHARES ;;
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

  dimension: strk_pr_cur {
    type: string
    description: "Currency of ISTRK_PR_L, STRK_PR_L, ISTRK_PR_U and STRK_PR_U"
    sql: ${TABLE}.STRK_PR_CUR ;;
  }

  dimension: strk_pr_l {
    type: number
    description: "Strike price for bull/bear ELI Lower strike price for range ELI"
    sql: ${TABLE}.STRK_PR_L ;;
  }

  dimension: strk_pr_u {
    type: number
    description: "Blank for bull/bear ELI Upper strike price for range ELI"
    sql: ${TABLE}.STRK_PR_U ;;
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

  dimension: underlying {
    type: string
    description: "Stock code of underlying stock. Applicable to ELI/CPI with a single stock as underlying only."
    sql: ${TABLE}.UNDERLYING ;;
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
    description: "Yield to payment date for ELI"
    sql: ${TABLE}.YIELD ;;
  }
  measure: count {
    type: count
    drill_fields: [short_name, full_name]
  }
}
