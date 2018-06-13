view: events1 {
  sql_table_name: __pw_monitoring.events1 ;;

  dimension: event_count {
    type: number
    sql: ${TABLE}.event_count ;;
  }

  dimension: no_pltfrm_event_count {
    type: number
    sql: ${TABLE}.no_pltfrm_event_count ;;
  }

  dimension: pltfrm_event_count {
    type: number
    sql: ${TABLE}.pltfrm_event_count ;;
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
