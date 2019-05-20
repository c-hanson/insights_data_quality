view: events_with_missing_session {
  sql_table_name: __pw_monitoring.events_with_missing_session ;;

  dimension_group: date_of_event {
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
    sql: ${TABLE}.date_of_event ;;
  }

  measure: evts_missing_sessions {
    type: sum
    sql: ${TABLE}.evts_missing_sessions ;;
  }

  measure: evts_total {
    type: sum
    sql: ${TABLE}.evts_total ;;
  }
}
