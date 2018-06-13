view: pageviews1 {
  sql_table_name: __pw_monitoring.pageviews1 ;;

  dimension: page_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}.page_ids ;;
  }

  dimension: page_views {
    type: number
    sql: ${TABLE}.page_views ;;
  }

  dimension: page_views_no_id {
    type: number
    sql: ${TABLE}.page_views_no_id ;;
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
