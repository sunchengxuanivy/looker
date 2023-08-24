# The name of this view in Looker is "Cbbc Raw"
view: cbbc_raw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `HKEx_demo_securities_attribute.cbbc_raw` ;;

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
    description: "Amount outstanding (Indicate the number of CBBC outstanding in the market)"
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
    description: "To distinguish basket CBBC Possible values are : ‘Y’ – basket CBBC ‘N’ – not basket CBBC"
    sql: ${TABLE}.BASKET_IND ;;
  }

  dimension: bd_lot_nom {
    type: number
    description: "Board lot nominal"
    sql: ${TABLE}.BD_LOT_NOM ;;
  }

  dimension: bln_cur {
    type: string
    description: "Currency of BD_LOT_NOM"
    sql: ${TABLE}.BLN_CUR ;;
  }

  dimension: board_lot {
    type: number
    description: "Board lot"
    sql: ${TABLE}.BOARD_LOT ;;
  }

  dimension: call_pr {
    type: number
    description: "Callable price"
    sql: ${TABLE}.CALL_PR ;;
  }

  dimension: call_pr_cur {
    type: string
    description: "Currency of ICALL_PR and CALL_PR"
    sql: ${TABLE}.CALL_PR_CUR ;;
  }

  dimension: cas_ind {
    type: string
    description: "To indicate if Closing Auction Session (CAS) is applicable to the security ‘Y’ – CAS applicable ‘N’ – CAS not applicable"
    sql: ${TABLE}.CAS_IND ;;
  }

  dimension: cbbc_cat {
    type: string
    description: "To indicate if Residual value is applicable to the CBBC ‘R’ – No residual value ‘N’ – With residual value"
    sql: ${TABLE}.CBBC_CAT ;;
  }

  dimension: cbbc_type {
    type: string
    description: "CBBC type. Possible values are: ‘01’ – Bull ‘02’ – Bear"
    sql: ${TABLE}.CBBC_TYPE ;;
  }

  dimension: con_ratio {
    type: number
    description: "Conversion ratio Value is accurate to 3 decimal places For index CBBC, conversion ratio refers to the number of contracts per entitlement, while for equity CBBC, it refers to the number of shares entitled for 1 contract"
    sql: ${TABLE}.CON_RATIO ;;
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

  dimension: exer_style {
    type: string
    description: "CBBC Exercise style. Possible values are: ‘A’ – American ‘E’ – European"
    sql: ${TABLE}.EXER_STYLE ;;
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

  dimension: icall_pr {
    type: number
    description: "Initial callable price"
    sql: ${TABLE}.ICALL_PR ;;
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

  dimension: issuer_name {
    type: string
    description: "Full name of Issuer"
    sql: ${TABLE}.ISSUER_NAME ;;
  }

  dimension: istrk_pr {
    type: number
    description: "Initial strike price"
    sql: ${TABLE}.ISTRK_PR ;;
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

  dimension: strk_pr {
    type: number
    description: "Strike price"
    sql: ${TABLE}.STRK_PR ;;
  }

  dimension: strk_pr_cur {
    type: string
    description: "Currency of ISTRK_PR and STRK_PR"
    sql: ${TABLE}.STRK_PR_CUR ;;
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

  dimension: under_name {
    type: string
    description: "Description of the corresponding underlying."
    sql: ${TABLE}.UNDER_NAME ;;
  }

  dimension: under_type {
    type: string
    description: "To indicate the type of underlying. Possible values are : ‘03’ – Equity ‘04’ – Index ’05’ – Currency ’06’ – Commodity ‘99’ – Others"
    sql: ${TABLE}.UNDER_TYPE ;;
  }

  dimension: underlying {
    type: string
    description: "Corresponding code of underlying which could be stock code / index code / currency code / commodity code / other codeRefers to UNDER_TYPE for type of underlying."
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
  measure: count {
    type: count
    drill_fields: [issuer_name, short_name, under_name, full_name]
  }
}
