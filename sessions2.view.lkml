view: sessions2 {
  sql_table_name: __pw_monitoring.sessions2 ;;

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
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

  dimension: session_count {
    type: number
    sql: ${TABLE}.session_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
