# The name of this view in Looker is "Registrar Raw"
view: registrar_raw {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `HKEx_demo_securities_attribute.registrar_raw` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    description: "Address of the registrar"
    sql: ${TABLE}.ADDRESS ;;
  }

  dimension: fax_1 {
    type: string
    description: "Fax number"
    sql: ${TABLE}.FAX_1 ;;
  }

  dimension: fax_2 {
    type: string
    description: "Fax number"
    sql: ${TABLE}.FAX_2 ;;
  }

  dimension: regcode {
    type: string
    description: "Code assigned to the registrar."
    sql: ${TABLE}.REGCODE ;;
  }

  dimension: regname {
    type: string
    description: "Name of the registrar"
    sql: ${TABLE}.REGNAME ;;
  }

  dimension: tel_1 {
    type: string
    description: "Telephone number"
    sql: ${TABLE}.TEL_1 ;;
  }

  dimension: tel_2 {
    type: string
    description: "Telephone number"
    sql: ${TABLE}.TEL_2 ;;
  }
  measure: count {
    type: count
    drill_fields: [regname]
  }
}
