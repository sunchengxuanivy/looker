# The name of this view in Looker is "Warrants Raw"
view: warrants_raw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `HKEx_demo_securities_attribute.warrants_raw` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Amt Iss" in Explore.

  dimension: amt_iss {
    type: number
    description: "Amount issued"
    sql: ${TABLE}.AMT_ISS ;;
  }

  dimension: amt_iss_cur {
    type: string
    description: "Currency of AMT_ISS in dollars"
    sql: ${TABLE}.AMT_ISS_CUR ;;
  }

  dimension: amt_iss_unit {
    type: string
    description: "Amount issued unit indicator ‘U’ – in units ‘$’ – in dollars"
    sql: ${TABLE}.AMT_ISS_UNIT ;;
  }

  dimension: amt_os {
    type: number
    description: "Amount outstanding (Indicate the number of Warrant outstanding in the market)"
    sql: ${TABLE}.AMT_OS ;;
  }

  dimension: amt_os_cur {
    type: string
    description: "Currency of AMT_OS in dollars"
    sql: ${TABLE}.AMT_OS_CUR ;;
  }

  dimension: amt_os_date {
    type: string
    description: "Amount outstanding as at date Format is YYYY/MM/DD"
    sql: ${TABLE}.AMT_OS_DATE ;;
  }

  dimension: amt_os_unit {
    type: string
    description: "Amount outstanding unit indicator ‘U’ – in units ‘$’ – in dollars"
    sql: ${TABLE}.AMT_OS_UNIT ;;
  }

  dimension: basket_ind {
    type: string
    description: "To distinguish basket warrants Possible values are : ‘Y’ – basket warrant ‘N’ – not basket warrant"
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

  dimension: call_put {
    type: string
    description: "To indicate call/put type Possible values are : ‘C’ – call ‘P’ – Put ‘O’ – Others"
    sql: ${TABLE}.CALL_PUT ;;
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

  dimension: exer_style {
    type: string
    description: "Exercise style Possible values are : ‘A’ – American ‘E’ – European"
    sql: ${TABLE}.EXER_STYLE ;;
  }

  dimension: exotic_type {
    type: string
    description: "Exotic Type"
    sql: ${TABLE}.EXOTIC_TYPE ;;
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

  dimension: isin {
    type: string
    description: "International Securities Identification Number"
    sql: ${TABLE}.ISIN ;;
  }

  dimension: issuer_name {
    type: string
    description: "Full name of Issuer"
    sql: ${TABLE}.ISSUER_NAME ;;
  }

  dimension: istr_pr_lower {
    type: number
    description: "Initial Lower Strike Price / Level"
    sql: ${TABLE}.ISTR_PR_LOWER ;;
  }

  dimension: istr_pr_upper {
    type: number
    description: "Initial Upper Strike Price / Level"
    sql: ${TABLE}.ISTR_PR_UPPER ;;
  }

  dimension: isub_pr {
    type: number
    description: "Initial subscription price"
    sql: ${TABLE}.ISUB_PR ;;
  }

  dimension: isub_pr_cur {
    type: string
    description: "Currency of ISUB_PR"
    sql: ${TABLE}.ISUB_PR_CUR ;;
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

  dimension: pos_ind {
    type: string
    description: "To indicate if Pre-Opening Session (POS) is applicable to the security ‘Y’ – POS applicable ‘N’ – POS not applicable"
    sql: ${TABLE}.POS_IND ;;
  }

  dimension: premium {
    type: number
    description: "Premium as at the start of day Zero if N/A Value is accurate to 3 decimal places 9999.999 if the value overflows"
    sql: ${TABLE}.PREMIUM ;;
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

  dimension: str_pr_lower {
    type: number
    description: "Lower Strike Price / Level"
    sql: ${TABLE}.STR_PR_LOWER ;;
  }

  dimension: str_pr_upper {
    type: number
    description: "Upper Strike Price / Level"
    sql: ${TABLE}.STR_PR_UPPER ;;
  }

  dimension: sub_from {
    type: string
    description: "Subscription period – from (inclusive) Format is YYYY/MM/DD"
    sql: ${TABLE}.SUB_FROM ;;
  }

  dimension: sub_pr {
    type: number
    description: "Subscription price or strike level"
    sql: ${TABLE}.SUB_PR ;;
  }

  dimension: sub_pr_cf {
    type: number
    description: "Capped/Floor subscription price/strike level"
    sql: ${TABLE}.SUB_PR_CF ;;
  }

  dimension: sub_pr_cur {
    type: string
    description: "Currency of subscription price"
    sql: ${TABLE}.SUB_PR_CUR ;;
  }

  dimension: sub_ratio {
    type: number
    description: "Subscription ratio"
    sql: ${TABLE}.SUB_RATIO ;;
  }

  dimension: sub_rpu {
    type: number
    description: "Subscription rights per unit"
    sql: ${TABLE}.SUB_RPU ;;
  }

  dimension: sub_to {
    type: string
    description: "Subscription period – to (inclusive) which is equivalent to the expiry date of the Warrant Format is YYYY/MM/DD"
    sql: ${TABLE}.SUB_TO ;;
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
    description: "Corresponding code of underlying which could be stock code / index code / currency code / commodity code / other code. Refers to UNDER_TYPE for type of underlying."
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
