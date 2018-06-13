view: query_trend_hourly {
  sql_table_name: __pw_monitoring.query_trend_hourly ;;

  dimension_group: hour {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.hour ;;
  }

  dimension: percent_wlm_queue_time {
    type: number
    sql: ${TABLE}.percent_wlm_queue_time ;;
  }

  dimension: queries_in_queue {
    type: number
    sql: ${TABLE}.queries_in_queue ;;
  }

  dimension: query_count {
    type: number
    sql: ${TABLE}.query_count ;;
  }

  dimension: queue_time_avg {
    type: number
    sql: ${TABLE}.queue_time_avg ;;
  }

  dimension: service_class {
    type: number
    sql: ${TABLE}.service_class ;;
  }

  dimension: service_class_condition {
    type: string
    sql: ${TABLE}.service_class_condition ;;
  }

  dimension: total_exec_time_sum {
    type: number
    sql: ${TABLE}.total_exec_time_sum ;;
  }

  dimension: total_queue_time_sum {
    type: number
    sql: ${TABLE}.total_queue_time_sum ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
