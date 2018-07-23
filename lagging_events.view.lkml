view: lagging_events {
  sql_table_name: __pw_monitoring.lagging_events ;;

  dimension_group: event {
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
    sql: ${TABLE}.event_date ;;
  }

  dimension: five_day_count {
    type: number
    sql: ${TABLE}.five_day_count ;;
  }

  dimension: four_day_count {
    type: number
    sql: ${TABLE}.four_day_count ;;
  }

  dimension: one_day_count {
    type: number
    sql: ${TABLE}.one_day_count ;;
  }

  dimension: three_day_count {
    type: number
    sql: ${TABLE}.three_day_count ;;
  }

  dimension: two_day_count {
    type: number
    sql: ${TABLE}.two_day_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
