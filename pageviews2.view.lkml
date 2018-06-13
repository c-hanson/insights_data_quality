view: pageviews2 {
  sql_table_name: __pw_monitoring.pageviews2 ;;

  dimension: duped_page_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}.duped_page_ids ;;
  }

  dimension: page_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}.page_ids ;;
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
