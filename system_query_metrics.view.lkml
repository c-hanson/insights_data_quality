view: system_query_metrics {
  sql_table_name: __pw_monitoring.system_query_metrics ;;

  dimension: cpu_usage_percent_hours {
    type: number
    sql: ${TABLE}.cpu_usage_percent_hours ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: service_class {
    type: number
    sql: ${TABLE}.service_class ;;
  }

  dimension: temp_blocks_to_disk {
    type: number
    sql: ${TABLE}.temp_blocks_to_disk ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
