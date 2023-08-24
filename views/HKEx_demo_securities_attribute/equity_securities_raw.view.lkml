# The name of this view in Looker is "Equity Securities Raw"
view: equity_securities_raw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `HKEx_demo_securities_attribute.equity_securities_raw` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Auth Sh" in Explore.

  dimension: auth_sh {
    type: number
    description: "Number of authorised / registered shares as at the end of the month This data item is not applicable to NASDAQ stocks"
    sql: ${TABLE}.AUTH_SH ;;
  }

  dimension: bal_sh_date {
    type: string
    description: "Balance sheet date Format is YYYY/MM/DD"
    sql: ${TABLE}.BAL_SH_DATE ;;
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

  dimension: dps {
    type: number
    description: "Dividend per shares Value is accurate to 4 decimal places"
    sql: ${TABLE}.DPS ;;
  }

  dimension: dps_cur {
    type: string
    description: "Currency of DPS"
    sql: ${TABLE}.DPS_CUR ;;
  }

  dimension: dps_ind {
    type: string
    description: "‘A’ if the DPS is an adjusted value"
    sql: ${TABLE}.DPS_IND ;;
  }

  dimension: eps {
    type: number
    description: "Earnings per shares. EPS = 0 if N/A or negative earnings Value is accurate to 4 decimal places"
    sql: ${TABLE}.EPS ;;
  }

  dimension: eps_cur {
    type: string
    description: "Currency of EPS"
    sql: ${TABLE}.EPS_CUR ;;
  }

  dimension: eps_ind {
    type: string
    description: "‘A’ if the EPS is an adjusted value"
    sql: ${TABLE}.EPS_IND ;;
  }

  dimension: filler {
    type: number
    description: "Filter"
    sql: ${TABLE}.FILLER ;;
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

  dimension: hsic_code {
    type: string
    description: "Hang Seng Industry Classification Code provided by Hang Seng Indexes Company Limited Please see footnote *"
    sql: ${TABLE}.HSIC_CODE ;;
  }

  dimension: isin {
    type: string
    description: "International Securities Identification Number"
    sql: ${TABLE}.ISIN ;;
  }

  dimension: iss_sh {
    type: number
    description: "Number of issued shares See Appendix 3 for the practice in updating the number of issued shares"
    sql: ${TABLE}.ISS_SH ;;
  }

  dimension: iss_sh_date {
    type: string
    description: "Number of issued shares as at date Format is YYYY/MM/DD"
    sql: ${TABLE}.ISS_SH_DATE ;;
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

  dimension: market_cap {
    type: number
    description: "Market capitalisation in trading currency as at the start of the day"
    sql: ${TABLE}.MARKET_CAP ;;
  }

  dimension: nav {
    type: number
    description: "Net asset value"
    sql: ${TABLE}.NAV ;;
  }

  dimension: nav_cur {
    type: string
    description: "Currency of NAV"
    sql: ${TABLE}.NAV_CUR ;;
  }

  dimension: par {
    type: number
    description: "Par value Value is accurate to 5 decimal places"
    sql: ${TABLE}.PAR ;;
  }

  dimension: par_cur {
    type: string
    description: "Currency of PAR"
    sql: ${TABLE}.PAR_CUR ;;
  }

  dimension: pe_ratio {
    type: number
    description: "Price earnings ratio as at the start of the day."
    sql: ${TABLE}.PE_RATIO ;;
  }

  dimension: pos_ind {
    type: string
    description: "To indicate if Pre-Opening Session (POS) is applicable to the security ‘Y’ – POS applicable ‘N’ – POS not applicable"
    sql: ${TABLE}.POS_IND ;;
  }

  dimension: profit {
    type: number
    description: "Net profit"
    sql: ${TABLE}.PROFIT ;;
  }

  dimension: profit_cur {
    type: string
    description: "Currency of PROFIT"
    sql: ${TABLE}.PROFIT_CUR ;;
  }

  dimension: registrar {
    type: string
    description: "Code of the registrar. Refer to the registrar file for details"
    sql: ${TABLE}.REGISTRAR ;;
  }

  dimension: resrv {
    type: number
    description: "Total reserves"
    sql: ${TABLE}.RESRV ;;
  }

  dimension: resrv_cur {
    type: string
    description: "Currency of RESERVE"
    sql: ${TABLE}.RESRV_CUR ;;
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
    description: "The start date of the suspension if SUSP_IND = Y Format is YYYY/MM/DD"
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
    description: "Dividend yield as at the start of the day"
    sql: ${TABLE}.YIELD ;;
  }
  measure: count {
    type: count
    drill_fields: [short_name, full_name]
  }
}
