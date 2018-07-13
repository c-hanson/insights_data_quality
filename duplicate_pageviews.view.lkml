view: duplicate_pageviews {

  # # You can specify the table name if it's different from the view name:
  sql_table_name: __pw_monitoring.duplicate_pageviews ;;
  #
  # # Define your dimensions and measures here, like this:
  dimension: session_id {
    description: " session which logged a duplicate pageview"
    type: string
    sql: ${TABLE}.session_id ;;
   }

  dimension: time_of_event {
    description: "Timestamp of duped pageview"
    type: date_time
    sql: ${TABLE}.time_of_event ;;
  }

  dimension: platform {
    description: "The platform which logged a duplicate pageview"
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: count {
    description: "The number of dupes"
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: date_of_event {
    description: "The date when dupe occurred"
    type: date
    sql: ${TABLE}.date_of_event ;;
  }

  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: duplicate_pageviews {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
