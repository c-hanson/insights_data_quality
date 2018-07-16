view: ef_looker_attribution {
  sql_table_name: public.ef_looker_attribution ;;

  dimension: booking_id {
    type: number
    sql: ${TABLE}.booking_id ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: parking_type {
    type: string
    sql: ${TABLE}.parking_type ;;
  }

  dimension: partner_id {
    type: number
    sql: ${TABLE}.partner_id ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: source_medium {
    type: string
    sql: ${TABLE}.source_medium ;;
  }

  dimension: tracking_platform {
    type: string
    sql: ${TABLE}.tracking_platform ;;
  }

  dimension_group: trunc {
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
    sql: ${TABLE}.trunc ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
