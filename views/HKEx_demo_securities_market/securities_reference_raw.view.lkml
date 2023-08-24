# The name of this view in Looker is "Securities Reference Raw"
view: securities_reference_raw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `HKEx_demo_securities_market.securities_reference_raw` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Accrued Interest" in Explore.

  dimension: accrued_interest {
    type: number
    description: "Numeric Variable length"
    sql: ${TABLE}.AccruedInterest ;;
  }

  dimension: call_price {
    type: number
    description: "Numeric"
    sql: ${TABLE}.CallPrice ;;
  }

  dimension: call_put_flag {
    type: string
    description: "X(1)"
    sql: ${TABLE}.CallPutFlag ;;
  }

  dimension: casflag {
    type: string
    description: "X(1)"
    sql: ${TABLE}.CASFlag ;;
  }

  dimension: ccassflag {
    type: string
    description: "X(1)"
    sql: ${TABLE}.CCASSFlag ;;
  }

  dimension: conversion_ratio {
    type: number
    description: "Numeric Variable length"
    sql: ${TABLE}.ConversionRatio ;;
  }

  dimension: coupon_rate {
    type: number
    description: "Numeric Variable length"
    sql: ${TABLE}.CouponRate ;;
  }

  dimension: currency_code {
    type: string
    description: "Character Variable length"
    sql: ${TABLE}.CurrencyCode ;;
  }

  dimension: currency_factor {
    type: string
    description: "Integer Variable length"
    sql: ${TABLE}.CurrencyFactor ;;
  }

  dimension: currency_rate {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.CurrencyRate ;;
  }

  dimension: decimals_in_call_price {
    type: number
    description: "Variable length"
    sql: ${TABLE}.DecimalsInCallPrice ;;
  }

  dimension: decimals_in_entitlement {
    type: string
    description: "Variable length"
    sql: ${TABLE}.DecimalsInEntitlement ;;
  }

  dimension: decimals_in_face_value {
    type: number
    description: "Numeric Variable length"
    sql: ${TABLE}.DecimalsInFaceValue ;;
  }

  dimension: delisting_date {
    type: string
    description: "Integer Variable length"
    sql: ${TABLE}.DelistingDate ;;
  }

  dimension: dummy_security_flag {
    type: string
    description: "X(1)"
    sql: ${TABLE}.DummySecurityFlag ;;
  }

  dimension: efnflag {
    type: string
    description: "X(1)"
    sql: ${TABLE}.EFNFlag ;;
  }

  dimension: entitlement {
    type: string
    description: "Integer"
    sql: ${TABLE}.Entitlement ;;
  }

  dimension: face_value {
    type: number
    description: "Numeric Variable length"
    sql: ${TABLE}.FaceValue ;;
  }

  dimension: face_value_currency {
    type: string
    description: "X(3)"
    sql: ${TABLE}.FaceValueCurrency ;;
  }

  dimension: free_text {
    type: string
    description: "Character Variable length"
    sql: ${TABLE}.FreeText ;;
  }

  dimension: instrument_type {
    type: string
    description: "Character Variable length"
    sql: ${TABLE}.InstrumentType ;;
  }

  dimension: investor_type {
    type: string
    description: "X(1)"
    sql: ${TABLE}.InvestorType ;;
  }

  dimension: isincode {
    type: string
    description: "Character Variable length"
    sql: ${TABLE}.ISINCode ;;
  }

  dimension: listing_date {
    type: string
    description: "Integer Variable length"
    sql: ${TABLE}.ListingDate ;;
  }

  dimension: lot_size {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.LotSize ;;
  }

  dimension: lpbroker_number {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.LPBrokerNumber ;;
  }

  dimension: market_code {
    type: string
    description: "Character Variable length"
    sql: ${TABLE}.MarketCode ;;
  }

  dimension: market_name {
    type: string
    description: "Character Variable length"
    sql: ${TABLE}.MarketName ;;
  }

  dimension: maturity_date {
    type: string
    description: "Numeric Variable length"
    sql: ${TABLE}.MaturityDate ;;
  }

  dimension: maturity_date_int {
    type: string
    description: "Integer Variable length"
    sql: ${TABLE}.MaturityDateInt ;;
  }

  dimension: msg_type {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.MsgType ;;
  }

  dimension: no_liquidity_providers {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.NoLiquidityProviders ;;
  }

  dimension: no_underlying_securities {
    type: string
    description: "Integer Variable length"
    sql: ${TABLE}.NoUnderlyingSecurities ;;
  }

  dimension: no_warrants_per_entitlement {
    type: string
    description: "Numeric Variable length"
    sql: ${TABLE}.NoWarrantsPerEntitlement ;;
  }

  dimension: number_of_securities {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.NumberOfSecurities ;;
  }

  dimension: posflag {
    type: string
    description: "X(1)"
    sql: ${TABLE}.POSFlag ;;
  }

  dimension: poslower_limit {
    type: number
    description: "Numeric Variable length"
    sql: ${TABLE}.POSLowerLimit ;;
  }

  dimension: posupper_limit {
    type: number
    description: "Numeric Variable length"
    sql: ${TABLE}.POSUpperLimit ;;
  }

  dimension: previous_closing_price {
    type: number
    description: "Numeric Variable length"
    sql: ${TABLE}.PreviousClosingPrice ;;
  }

  dimension: product_type {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.ProductType ;;
  }

  dimension: security_code {
    type: number
    description: "Integer Variable length"
    sql: ${TABLE}.SecurityCode ;;
  }

  dimension: security_name_gb {
    type: string
    description: "Character Variable length"
    sql: ${TABLE}.SecurityNameGB ;;
  }

  dimension: security_name_gccs {
    type: string
    description: "Character Variable length"
    sql: ${TABLE}.SecurityNameGCCS ;;
  }

  dimension: security_short_name {
    type: string
    description: "Characters Variable length"
    sql: ${TABLE}.SecurityShortName ;;
  }

  dimension: send_time_convertfrom_utcto_hkt {
    type: string
    description: "YYYYMMDD HHMMSSTTT"
    sql: ${TABLE}.SendTimeConvertfromUTCtoHKT ;;
  }

  dimension: short_sell_flag {
    type: string
    description: "X(1)"
    sql: ${TABLE}.ShortSellFlag ;;
  }

  dimension: spread_table_code {
    type: string
    description: "Character Variable length"
    sql: ${TABLE}.SpreadTableCode ;;
  }

  dimension: stamp_duty_flag {
    type: string
    description: "X(1)"
    sql: ${TABLE}.StampDutyFlag ;;
  }

  dimension: strike_price1 {
    type: number
    description: "Numeric Variable length"
    sql: ${TABLE}.StrikePrice1 ;;
  }

  dimension: strike_price2 {
    type: number
    description: "Numeric Variable length"
    sql: ${TABLE}.StrikePrice2 ;;
  }

  dimension: style {
    type: string
    description: "X(1)"
    sql: ${TABLE}.Style ;;
  }

  dimension: underlying_security_code {
    type: string
    description: "Integer Variable length"
    sql: ${TABLE}.UnderlyingSecurityCode ;;
  }

  dimension: vcmflag {
    type: string
    description: "X(1)"
    sql: ${TABLE}.VCMFlag ;;
  }

  dimension: warrant_type {
    type: string
    description: "X(1)"
    sql: ${TABLE}.WarrantType ;;
  }
  measure: count {
    type: count
    drill_fields: [security_short_name, market_name]
  }
}
