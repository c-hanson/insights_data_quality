view: locationdeets {
  sql_table_name: __pw_monitoring.locationdeets ;;

  dimension: ld_no_l_page_views {
    type: number
    sql: ${TABLE}.ld_no_l_page_views ;;
  }

  dimension: ld_page_views {
    type: number
    sql: ${TABLE}.ld_page_views ;;
  }

  dimension_group: sc {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.sc_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
