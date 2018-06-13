view: airflow_task_instance {
  sql_table_name: __pw_monitoring.airflow_task_instance ;;

  dimension: dag_id {
    type: string
    sql: ${TABLE}.dag_id ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_date ;;
  }

  dimension_group: execution {
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
    sql: ${TABLE}.execution_date ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: job_id {
    type: number
    sql: ${TABLE}.job_id ;;
  }

  dimension: max_tries {
    type: number
    sql: ${TABLE}.max_tries ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}.operator ;;
  }

  dimension: pid {
    type: number
    value_format_name: id
    sql: ${TABLE}.pid ;;
  }

  dimension: pool {
    type: string
    sql: ${TABLE}.pool ;;
  }

  dimension: priority_weight {
    type: number
    sql: ${TABLE}.priority_weight ;;
  }

  dimension: queue {
    type: string
    sql: ${TABLE}.queue ;;
  }

  dimension_group: queued_dttm {
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
    sql: ${TABLE}.queued_dttm ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: task_id {
    type: string
    sql: ${TABLE}.task_id ;;
  }

  dimension: try_number {
    type: number
    sql: ${TABLE}.try_number ;;
  }

  dimension: unixname {
    type: string
    sql: ${TABLE}.unixname ;;
  }

  measure: count {
    type: count
    drill_fields: [unixname, hostname]
  }
}
