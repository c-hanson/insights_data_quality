view: sessions1 {
  sql_table_name: __pw_monitoring.sessions1 ;;

  dimension: no_pltfrm_session_count {
    type: number
    sql: ${TABLE}.no_pltfrm_session_count ;;
  }

  dimension: pltfrm_session_count {
    type: number
    sql: ${TABLE}.pltfrm_session_count ;;
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
