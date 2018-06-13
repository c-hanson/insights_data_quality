view: purchases1 {
  sql_table_name: __pw_monitoring.purchases1 ;;

  dimension: aft_purchases {
    type: number
    sql: ${TABLE}.aft_purchases ;;
  }

  dimension: purchase_events_insights {
    type: number
    sql: ${TABLE}.purchase_events_insights ;;
  }

  dimension: purchase_events_no_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.purchase_events_no_bid ;;
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
